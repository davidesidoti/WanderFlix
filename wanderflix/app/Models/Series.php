<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\CssSelector\Node\AttributeNode;

class Series extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'completed',
        'watched_episodes',
        'total_episodes',
        'completed_at',
        'created_by',
        'updated_by',
    ];

    public function creator()
    {
        return $this->belongsTo(User::class, 'created_by');
    }

    public function updater()
    {
        return $this->belongsTo(User::class, 'updated_by');
    }

    protected static function booted()
    {
        static::creating(function ($film) {
            $film->created_by = Auth::id();  // Imposta l'ID dell'utente autenticato
            $film->updated_by = Auth::id();  // Imposta anche l'ID di aggiornamento
        });

        static::updating(function ($film) {
            $film->updated_by = Auth::id();  // Imposta l'ID dell'utente che aggiorna
        });
    }
}
