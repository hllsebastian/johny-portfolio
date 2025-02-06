part of 'pokemon_cubit.dart';

@freezed
class PokemonState with _$PokemonState {
  const factory PokemonState.initial({
    @Default('') final String? word,
    @Default('') final String? imageUrl,
    @Default(false) final bool isLoading,
    final Set<String>? guessedLetters,
    @Default(0) final int remainingTime,
    @Default(0) final int remainingAttempts,
    @Default(false) final bool isGameOver,
    @Default(false) final bool isWinner,
    @Default(false) final bool pausedGame,
    final String? error,
  }) = _Initial;
}
