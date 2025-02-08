import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:johny_portfolio/features/home/presentation/widgets/widgets.dart';
import 'dart:html' as html;

class ProjectSectionView extends StatelessWidget {
  const ProjectSectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: _Body(),
      ),
      bottomNavigationBar: ContacMe(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 32,
          ),
          _TopSide(),
          SizedBox(height: 60),
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
    );
  }
}

class _TopSide extends StatelessWidget {
  const _TopSide();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Row(
        children: [
          SizedBox(width: MediaQuery.sizeOf(context).width * 0.05),
          TextButton(
            child: Text(
              'Home',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              context.go('/');
              // TODO: temporary solution. Should change to AutoRoute
              Future.microtask(() {
                if (kIsWeb) {
                  html.window.history.replaceState(null, '/', '/');
                }
              });
            },
          ),
          Spacer(),
          const Text(
            'Projects',
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
