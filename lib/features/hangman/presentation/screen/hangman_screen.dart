import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:johny_portfolio/features/hangman/presentation/cubit/hangman_cubit.dart';

class HangmanScreen extends StatelessWidget {
  const HangmanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.I.get<HangmanCubit>(),
      child: Scaffold(
        body: const HangmanGame(),
      ),
    );
  }
}

class HangmanGame extends StatelessWidget {
  const HangmanGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HangmanCubit, HangmanState>(
      builder: (context, state) {
        final wordDisplay = state.word.toLowerCase().split('').map((char) {
          return state.guessedLetters.contains(char) ? char : '_';
        }).join(' ');
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Hangman',
              style: TextStyle(fontSize: 60),
            ),
            Center(
              child: Text(
                wordDisplay,
                style:
                    const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 8,
              runSpacing: 8,
              children: 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.split('').map((letter) {
                return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                          state.guessedLetters.contains(letter.toLowerCase()) &&
                                  state.word
                                      .toLowerCase()
                                      .contains(letter.toLowerCase())
                              ? Colors.grey
                              : Colors.amber),
                  onPressed: () {
                    context.read<HangmanCubit>().guessLetter(letter);
                  },
                  child: Text(
                    letter,
                    style: TextStyle(color: Colors.black),
                  ),
                );
              }).toList(),
            ),
            state.isGameOver
                ? Text(
                    state.isWinner
                        ? 'You Win!'
                        : 'You Lost! the word was ${state.word}',
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  )
                : SizedBox.shrink(),
          ],
        );
      },
    );
  }
}
