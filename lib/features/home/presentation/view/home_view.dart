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
      bottomNavigationBar: _ContacMe(),
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
          crossAxisAlignment: CrossAxisAlignment.center,
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

class _ContacMe extends StatelessWidget {
  const _ContacMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).width * 0.05,
      child: Card(
        color: Colors.blue.shade100,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _ContactItem(
              icon: Icons.email,
              text: 'hllsebastian@gmail.com',
            ),
            _ContactItem(
              icon: Icons.linked_camera,
              text: 'LinkedIn: https://www.linkedin.com/in/jospina-dev/',
            ),
            _ContactItem(
              icon: Icons.phone_iphone_outlined,
              text: '+57 3017959031',
            ),
          ],
        ),
      ),
    );
  }
}
