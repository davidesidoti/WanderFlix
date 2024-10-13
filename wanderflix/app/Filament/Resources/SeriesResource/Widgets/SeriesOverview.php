<?php

namespace App\Filament\Resources\SeriesResource\Widgets;

use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;
use App\Models\Series;

class SeriesOverview extends BaseWidget
{
    protected static ?string $pollingInterval = null;

    protected function getStats(): array
    {
        return [
            Stat::make('Completed Series', Series::where('completed', 0)->count()),
            Stat::make('Series To Be Completed', Series::where('completed', 1)->count()),
            Stat::make('All Series Watching Percentage', number_format(((Series::sum('watched_episodes') / Series::sum('total_episodes')) * 100), 2) . '%'),
        ];
    }
}
