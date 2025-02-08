import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:johny_portfolio/features/pokemon/presentation/cubit/pokemon_cubit.dart';
import 'package:johny_portfolio/features/pokemon/presentation/widgets/letter_button.dart';
import 'package:johny_portfolio/features/pokemon/presentation/widgets/pokemon_image.dart';
import 'package:johny_portfolio/features/pokemon/presentation/widgets/word_display.dart';

class PokemonView extends StatelessWidget {
  const PokemonView({super.key});

  @override
  Widget build(BuildContext context) {
    return PokemonGame();
  }
}

class PokemonGame extends StatelessWidget {
  const PokemonGame({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonCubit, PokemonState>(
      builder: (context, state) {
        if (state.word != null && state.word!.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state.isGameOver) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                state.isWinner ? '¡Ganaste!' : '¡Perdiste! Era: ${state.word}',
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              _RestartButton(),
            ],
          );
        }
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Intentos restantes: ${state.remainingAttempts}',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Tiempo restante: ${state.remainingTime}s',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            PokemonImage(imageUrl: state.imageUrl ?? ''),
            WordDisplay(
                word: state.word ?? '',
                guessedLetters: state.guessedLetters ?? {}),
            const SizedBox(height: 16),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 8,
              runSpacing: 8,
              children: 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.split('').map((letter) {
                return LetterButton(
                  letter: letter,
                  onPressed: (state.guessedLetters != null &&
                              state.guessedLetters!.contains(letter)) ||
                          state.isGameOver ||
                          state.pausedGame
                      ? null
                      : () => context.read<PokemonCubit>().guessLetter(letter),
                );
              }).toList(),
            ),
            SizedBox(height: 50),
            _GameButtons(),
          ],
        );
      },
    );
  }
}

class _GameButtons extends StatefulWidget {
  const _GameButtons({
    super.key,
  });

  @override
  State<_GameButtons> createState() => _GameButtonsState();
}

class _GameButtonsState extends State<_GameButtons> {
  bool isPaused = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _RestartButton(),
        Column(
          children: [
            Text(
              'Pause',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            IconButton(
              icon: Icon(isPaused ? Icons.play_arrow : Icons.pause),
              onPressed: () {
                setState(() {
                  isPaused = !isPaused;
                });
                if (isPaused) {
                  context.read<PokemonCubit>().pauseGame();
                } else {
                  context.read<PokemonCubit>().resumeGame();
                }
              },
            ),
          ],
        ),
      ],
    );
  }
}

class _RestartButton extends StatelessWidget {
  const _RestartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Restart',
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        IconButton(
          icon: const Icon(Icons.refresh),
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) {
                return AlertDialog(
                  title: const Text('Reiniciar el Juego'),
                  content: const Text(
                      '¿Estás seguro de que quieres reiniciar el juego?'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Cancelar'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        context.read<PokemonCubit>().resetGame();
                      },
                      child: const Text('Reiniciar'),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ],
    );
  }
}
