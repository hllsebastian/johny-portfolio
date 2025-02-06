import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:johny_portfolio/features/hangman/domain/usecases/fetch_random_word.dart';

part 'hangman_state.dart';
part 'hangman_cubit.freezed.dart';

@injectable
class HangmanCubit extends Cubit<HangmanState> {
  HangmanCubit(this.fetchRandomWord) : super(HangmanState.initial());

  final FetchRandomWord fetchRandomWord;

  void guessLetter(String letter) {
    if (state.isGameOver || state.isWinner) return;

    final guessedLetters = {...state.guessedLetters, letter.toLowerCase()};
    if (!state.word.toLowerCase().contains(letter.toLowerCase())) {
      final attempts = state.remainingAttempts - 1;
      emit(state.copyWith(
        guessedLetters: guessedLetters,
        remainingAttempts: attempts,
        isGameOver: attempts <= 0,
      ));
    } else {
      final isWinner = state.word
          .toLowerCase()
          .split('')
          .every((char) => guessedLetters.contains(char.toLowerCase()));
      emit(state.copyWith(
        guessedLetters: guessedLetters,
        isWinner: isWinner,
        isGameOver: isWinner,
      ));
    }
  }
}
