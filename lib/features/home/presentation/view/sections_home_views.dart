part of 'home_view.dart';

class _Sections extends StatelessWidget {
  const _Sections();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 40, // Space between cards
      runSpacing: 20, // Space between rows when wrapping
      children: [
        SectionWidget(
          title: "About Me",
          content: _AboutMe(),
        ),
        SizedBox(width: MediaQuery.sizeOf(context).width * 0.1),
        SectionWidget(
          title: 'Projects',
          content: _Projects(),
        ),
      ],
    );
  }
}

class _AboutMe extends StatelessWidget {
  const _AboutMe();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Hi, I'm Jonhy Ospina and I have been working as a Flutter developer for more than 2 years. I am passionate about learning new technologies and building software that solves real-world problems.",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        const Text(
          'My hard Skills: Flutter, Dart, GitHub, GitLab, dotNet, Unity\n\nMy soft skills: proactive, workteam, eficient, responsible',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class _Projects extends StatelessWidget {
  const _Projects();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "My work include mobile and web apps. By the way I developed this web with Flutter ;)\n\nHere You're going to find an explanation about my projects, the architecture and repository links. Also you could play with some games",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        TextButton(
          child: const Text(
            'Click here for more details about my projects',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
          onPressed: () => context.go('/project-section'),
        )
      ],
    );
  }
}
