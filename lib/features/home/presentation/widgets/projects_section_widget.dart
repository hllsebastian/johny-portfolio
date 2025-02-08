import 'package:flutter/material.dart';
import 'package:johny_portfolio/features/home/presentation/widgets/project_card_widget.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ColoredBox(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'My Projects',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              GridView.count(
                crossAxisCount: MediaQuery.of(context).size.width > 600 ? 3 : 2,
                shrinkWrap: true,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  ProjectCardWidget(
                    title: "Who's that Pokémon?",
                    description: 'A fun guessing game.',
                    path: '/pokemon',
                  ),
                  ProjectCardWidget(
                    title: 'Hangman Game',
                    description: 'A fun guessing game.',
                    path: '/hangman',
                  ),
                  ProjectCardWidget(
                    title: 'Drag and Drop Shapes',
                    description: 'An interactive drag-and-drop game.',
                    path: '/objects',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
