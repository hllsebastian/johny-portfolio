part of 'hangman_cubit.dart';

@freezed
class HangmanState with _$HangmanState {
  const factory HangmanState.initial({
    @Default('Aloha') final String word, // Palabra a adivinar
    @Default({}) final Set<String> guessedLetters, // Letras adivinadas
    @Default(5) final int remainingAttempts, // Intentos restantes
    @Default(false) bool isGameOver,
    @Default(false) bool isWinner,
  }) = _Initial;
}
