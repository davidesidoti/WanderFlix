<?php

namespace App\Filament\Resources;

use App\Filament\Resources\FilmResource\Pages;
use App\Models\Film;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables\Table;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Checkbox;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Grid;
use App\Models\Group;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\BooleanColumn;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Actions\EditAction;
use Filament\Tables\Actions\DeleteAction;
use Filament\Tables\Actions\DeleteBulkAction;
use Filament\Tables\Columns\IconColumn;

class FilmResource extends Resource
{
    protected static ?string $model = Film::class;
    protected static ?string $navigationGroup  = 'Watchlist';
    protected static ?string $navigationIcon = 'heroicon-o-film';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Grid::make(2)->schema([
                    TextInput::make('name')
                        ->required(),
                        
                    Checkbox::make('watched')
                    ->reactive(),
    
                    DatePicker::make('watched_at')
                        ->visible(fn ($get) => $get('watched'))
                        ->nullable(),
    
                    Select::make('group_id')
                        ->label('Raggruppamento')
                        ->options(Group::all()->pluck('name', 'id'))
                        ->getOptionLabelUsing(fn ($value) => optional(Group::find($value))->name)
                        ->searchable(),
                ]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('name')
                    ->sortable()
                    ->searchable()
                    ->formatStateUsing(function ($state, $record) {
                        $group = $record->group;
                        if ($group) {
                            return "<span style='background-color: {$group->color}; padding: 4px; display: inline-block; width: 100%;'
                            class='group-color'>{$state}</span>";
                        }
                        return $state;
                    })
                    ->html(),
                    
                IconColumn::make('watched')
                    ->boolean()
                    ->sortable(),

                TextColumn::make('watched_at')
                    ->date()
                    ->sortable(),

                TextColumn::make('group_id')
                    ->formatStateUsing(function ($state, $record) {
                        return Group::where('id', $record->group_id)->first()->name;
                    })
                    ->searchable()
                    ->sortable(),

                TextColumn::make('updated_by')
                    ->label('Aggiornato da')
                    ->formatStateUsing(fn ($state, $record) => $record->updater?->name ?? 'N/A')  // Mostra il nome dell'utente
                    ->sortable(),

                TextColumn::make('created_at')
                    ->dateTime()
                    ->toggleable(isToggledHiddenByDefault: true),

                TextColumn::make('updated_at')
                    ->dateTime()
                    ->toggleable(),
            ])
            ->defaultSort('watched_at', 'asc')
            ->filters([
                SelectFilter::make('watched')
                ->options([
                    '1' => 'Sì',  // Film visti
                    '0' => 'No',  // Film non visti
                ]),
            
                SelectFilter::make('group_id')
                    ->relationship('group', 'name') // Relazione verso il gruppo
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
            'index' => Pages\ListFilms::route('/'),
            'create' => Pages\CreateFilm::route('/create'),
            'edit' => Pages\EditFilm::route('/{record}/edit'),
        ];
    }
}
