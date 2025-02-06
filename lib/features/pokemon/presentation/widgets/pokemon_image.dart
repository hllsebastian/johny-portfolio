import 'package:flutter/material.dart';

class PokemonImage extends StatelessWidget {
  final String imageUrl;

  const PokemonImage({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return imageUrl.isEmpty
        ? const CircularProgressIndicator()
        : Image.network(imageUrl, height: 150, fit: BoxFit.contain);
  }
}
