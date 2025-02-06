import 'package:flutter/material.dart';

class LetterButton extends StatelessWidget {
  final String letter;
  final VoidCallback? onPressed;

  const LetterButton({Key? key, required this.letter, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(letter),
    );
  }
}
