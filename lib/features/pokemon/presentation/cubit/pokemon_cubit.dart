import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:johny_portfolio/features/pokemon/domain/usecases/fetch_random_pokemon.dart';

part 'pokemon_state.dart';
part 'pokemon_cubit.freezed.dart';

@injectable
class PokemonCubit extends Cubit<PokemonState> {
  PokemonCubit(this.fetchPokemon) : super(PokemonState.initial());

  final FetchRandomPokemon fetchPokemon;
  Timer? _timer;
  bool _isPaused = false;

  void fetchRandomPokemon() async {
    emit(state.copyWith(isLoading: true));
    final result = await fetchPokemon();
    result.fold(
      (error) => emit(state.copyWith(isLoading: false)),
      (pokemon) => emit(state.copyWith(
        word: pokemon['name']!.toUpperCase(),
        imageUrl: pokemon['image']!,
        remainingAttempts: 89,
        remainingTime: 30,
        isLoading: false,
        isGameOver: false,
        guessedLetters: {},
      )),
    );
    startTimer();
  }

  void guessLetter(String letter) {
    if (state.isGameOver || state.isWinner) return;

    final guessedLetters = {
      ...state.guessedLetters ?? {''},
      letter.toUpperCase()
    };
    if (state.word != null && !state.word!.contains(letter.toUpperCase())) {
      final attempts = state.remainingAttempts - 1;
      emit(state.copyWith(
        guessedLetters: guessedLetters,
        remainingAttempts: attempts,
        isGameOver: attempts <= 0,
      ));
    } else {
      final isWinner =
          state.word?.split('').every((char) => guessedLetters.contains(char));
      emit(state.copyWith(
        guessedLetters: guessedLetters,
        isWinner: isWinner ?? false,
        isGameOver: isWinner ?? false,
      ));
    }
  }

  void startTimer() {
    int time = state.remainingTime;
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_isPaused) return;
      if (time > 0) {
        time--;
        emit(state.copyWith(remainingTime: time));
      } else {
        timer.cancel();
        endGame();
      }
    });
  }

  void pauseGame() {
    _isPaused = true;
  }

  void resumeGame() {
    _isPaused = false;
  }

  void endGame() {
    emit(state.copyWith(remainingTime: 0, isGameOver: true));
  }

  void resetGame() {
    _timer?.cancel(); // Detiene el temporizador actual
    fetchRandomPokemon(); // Restablece el estado inicial
  }

  // @override
  // Future<void> close() {
  //   _timer?.cancel();
  //   return super.close();
  // }
}
