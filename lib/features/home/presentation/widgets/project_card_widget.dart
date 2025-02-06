import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.path,
  }) : super(key: key);

  final String title;
  final String description;
  final String path;
  @override
  Widget build(BuildContext context) {
    void _showManualDialog() {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: const Text('Manual del Juego'),
            content: const Text(
              '¡Bienvenido al juego Pokémon Hangman!\n\n'
              'Reglas del Juego:\n'
              '1. Adivina el nombre del Pokémon letra por letra.\n'
              '2. Tienes un límite de 6 intentos fallidos.\n'
              '3. ¡Descubre el Pokémon antes de que se acaben los intentos!',
              textAlign: TextAlign.center,
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context.go(path);
                    },
                    child: const Text('¡Iniciar Juego!'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: const Text('Regresar'),
                  ),
                ],
              ),
            ],
          );
        },
      );
    }

    return GestureDetector(
      onTap: () => _showManualDialog(),
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: SizedBox(
          height: 30,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
