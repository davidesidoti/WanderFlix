<?php

namespace App\Providers\Filament;

use Filament\Http\Middleware\Authenticate;
use Filament\Http\Middleware\DisableBladeIconComponents;
use Filament\Http\Middleware\DispatchServingFilamentEvent;
use Filament\Pages;
use Filament\Panel;
use Filament\PanelProvider;
use Filament\Support\Colors\Color;
use Filament\Widgets;
use Illuminate\Cookie\Middleware\AddQueuedCookiesToResponse;
use Illuminate\Cookie\Middleware\EncryptCookies;
use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken;
use Illuminate\Routing\Middleware\SubstituteBindings;
use Illuminate\Session\Middleware\AuthenticateSession;
use Illuminate\Session\Middleware\StartSession;
use Illuminate\View\Middleware\ShareErrorsFromSession;

class AdminPanelProvider extends PanelProvider
{
    public function panel(Panel $panel): Panel
    {
        return $panel
            ->default()
            ->id('admin')
            ->path('admin')
            ->login()
            ->colors([
                'primary' => [
                    50 => '34, 232, 223',
                    100 => '34, 232, 223',
                    200 => '34, 232, 223',
                    300 => '34, 232, 223',
                    400 => '0, 185, 177',
                    500 => '0, 139, 133',
                    600 => '0, 96, 91',
                    700 => '0, 54, 53',
                    800 => '0, 54, 53',
                    900 => '0, 54, 53',
                    950 => '0, 54, 53',
                ],
                'gray' => [
                    50 => '208, 199, 221',
                    100 => '208, 199, 221',
                    200 => '208, 199, 221',
                    300 => '208, 199, 221',
                    400 => '157, 149, 170',
                    500 => '109, 101, 121',
                    600 => '65, 58, 76',
                    700 => '25, 19, 35',
                    800 => '25, 19, 35',
                    900 => '25, 19, 35',
                    950 => '25, 19, 35',
                ],
                'info' => [
                    50 => '249, 228, 107',
                    100 => '249, 228, 107',
                    200 => '249, 228, 107',
                    300 => '249, 228, 107',
                    400 => '195, 178, 58',
                    500 => '144, 131, 0',
                    600 => '94, 87, 0',
                    700 => '55, 45, 0',
                    800 => '55, 45, 0',
                    900 => '55, 45, 0',
                    950 => '55, 45, 0',
                ],
                'danger' => [
                    50 => '220, 57, 106',
                    100 => '220, 57, 106',
                    200 => '220, 57, 106',
                    300 => '220, 57, 106',
                    400 => '189, 14, 82',
                    500 => '158, 0, 59',
                    600 => '127, 0, 37',
                    700 => '8, 45, 0',
                    800 => '97, 0, 16',
                    900 => '97, 0, 16',
                    950 => '97, 0, 16',
                ],
                'success' => [
                    50 => '152, 195, 121',
                    100 => '152, 195, 121',
                    200 => '152, 195, 121',
                    300 => '152, 195, 121',
                    400 => '113, 155, 84',
                    500 => '75, 116, 48',
                    600 => '38, 80, 12',
                    700 => '8, 45, 0',
                    800 => '8, 45, 0',
                    900 => '8, 45, 0',
                    950 => '8, 45, 0',
                ],
                'warning' => [
                    50 => '255, 107, 127',
                    100 => '255, 107, 127',
                    200 => '255, 107, 127',
                    300 => '255, 107, 127',
                    400 => '215, 71, 95',
                    500 => '176, 29, 65',
                    600 => '137, 0, 37',
                    700 => '99, 0, 8',
                    800 => '99, 0, 8',
                    900 => '99, 0, 8',
                    950 => '99, 0, 8',
                ],
            ])
            ->discoverResources(in: app_path('Filament/Resources'), for: 'App\\Filament\\Resources')
            ->discoverPages(in: app_path('Filament/Pages'), for: 'App\\Filament\\Pages')
            ->pages([
                Pages\Dashboard::class,
            ])
            ->discoverWidgets(in: app_path('Filament/Widgets'), for: 'App\\Filament\\Widgets')
            ->widgets([
                Widgets\AccountWidget::class,
                Widgets\FilamentInfoWidget::class,
            ])
            ->middleware([
                EncryptCookies::class,
                AddQueuedCookiesToResponse::class,
                StartSession::class,
                AuthenticateSession::class,
                ShareErrorsFromSession::class,
                VerifyCsrfToken::class,
                SubstituteBindings::class,
                DisableBladeIconComponents::class,
                DispatchServingFilamentEvent::class,
            ])
            ->authMiddleware([
                Authenticate::class,
            ]);
    }
}
