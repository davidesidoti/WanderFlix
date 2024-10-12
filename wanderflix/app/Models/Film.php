<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class Film extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'watched', 'watched_at', 'group_id', 'created_by', 'updated_by'];

    public function group()
    {
        return $this->belongsTo(Group::class);
    }

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
