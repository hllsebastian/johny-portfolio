import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:johny_portfolio/features/home/presentation/widgets/widgets.dart';

part 'sections_home_views.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              _TitleSection(),
              SizedBox(height: 46),
              _Sections(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ContacMe(),
    );
  }
}

class _TitleSection extends StatelessWidget {
  const _TitleSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: Column(
          children: [
            const Text(
              'Welcome to Johny Portfolio!',
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Text(
              'This portfolio showcases my skills and projects.',
              style: TextStyle(fontSize: 30, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
