<?php

namespace App\Filament\Resources;

use App\Filament\Resources\SeriesResource\Pages;
use App\Models\Series;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables\Table;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Toggle;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\Grid;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Actions\EditAction;
use Filament\Tables\Actions\DeleteAction;
use Filament\Tables\Actions\DeleteBulkAction;
use Filament\Tables\Columns\IconColumn;

class SeriesResource extends Resource
{
    protected static ?string $model = Series::class;
    protected static ?string $navigationGroup  = 'Watchlist';
    protected static ?string $navigationIcon = 'heroicon-o-tv';
    protected static ?int $navigationSort = 2;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Grid::make(2)->schema([
                    TextInput::make('name')
                        ->required(),
                        
                    Toggle::make('watched')
                        ->onColor('success')
                        ->offColor('danger')
                        ->inline(false)
                        ->reactive(),
    
                    DatePicker::make('completed_at')
                        ->visible(fn ($get) => $get('completed'))
                        ->nullable()
                        ->native(false),

                    TextInput::make('watched_episodes')
                        ->numeric()
                        ->default(0),

                    TextInput::make('total_episodes')
                        ->numeric()
                        ->default(0),
                ]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('name')
                    ->sortable()
                    ->searchable(),
                    
                IconColumn::make('completed')
                    ->boolean()
                    ->sortable(),

                TextColumn::make('completed_at')
                    ->date()
                    ->sortable(),

                TextColumn::make('watching_percentage')
                    ->state(function (Series $record): string {
                        $total_watched = $record->watched_episodes;
                        $total_episodes = $record->total_episodes;

                        if ($total_episodes > 0) {
                            $percentage = ($total_watched / $total_episodes) * 100;
                            return number_format($percentage, 2) . '%';
                        }

                        return '0%';
                    })
                    ->html(),

                TextColumn::make('updated_by')
                    ->formatStateUsing(fn ($state, $record) => $record->updater?->name ?? 'N/A')  // Mostra il nome dell'utente
                    ->sortable(),

                TextColumn::make('created_at')
                    ->dateTime()
                    ->toggleable(isToggledHiddenByDefault: true),

                TextColumn::make('updated_at')
                    ->dateTime()
                    ->toggleable(),
            ])
            ->defaultSort('completed_at', 'asc')
            ->filters([
                SelectFilter::make('completed')
                ->options([
                    '1' => 'Sì',  // Film visti
                    '0' => 'No',  // Film non visti
                ]),
            ])
            ->actions([
                EditAction::make(),
                DeleteAction::make(),
            ])
            ->bulkActions([
                DeleteBulkAction::make(),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListSeries::route('/'),
            'create' => Pages\CreateSeries::route('/create'),
            'edit' => Pages\EditSeries::route('/{record}/edit'),
        ];
    }

    public static function getWidgets(): array
    {
        return [
            SeriesResource\Widgets\SeriesOverview::class
        ];
    }
}
