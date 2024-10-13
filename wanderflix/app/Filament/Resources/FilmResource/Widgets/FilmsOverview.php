<?php

namespace App\Filament\Resources\FilmResource\Widgets;

use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;
use App\Models\Film;
use App\Models\Group;

class FilmsOverview extends BaseWidget
{
    protected static ?string $pollingInterval = null;

    protected function getStats(): array
    {
        return [
            Stat::make('Watched Movies', Film::where('watched', 0)->count()),
            Stat::make('Movies To Be Watched', Film::where('watched', 1)->count()),
            Stat::make('Categories', Group::all()->count()),
        ];
    }
}
