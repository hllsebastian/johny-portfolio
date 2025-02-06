import 'package:flutter/material.dart';

class WordDisplay extends StatelessWidget {
  final String word;
  final Set<String> guessedLetters;

  const WordDisplay(
      {Key? key, required this.word, required this.guessedLetters})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wordDisplay = word.split('').map((char) {
      return guessedLetters.contains(char) ? char : '_';
    }).join(' ');
    return Text(
      wordDisplay,
      style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }
}
