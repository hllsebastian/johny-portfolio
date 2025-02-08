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
                      context.go('/pokemon');
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

// class _ContacMe extends StatelessWidget {
//   const _ContacMe();

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           _ContactItem(
//             icon: Icons.email,
//             text: 'hllsebastian@gmail.com',
//           ),
//           _ContactItem(
//             icon: Icons.linked_camera,
//             text: 'LinkedIn',
//           ),
//           _ContactItem(
//             icon: Icons.phone_iphone_outlined,
//             text: '+57 3017959031',
//           ),
//         ],
//       ),
//     );
//   }
// }

class _ContactItem extends StatelessWidget {
  const _ContactItem({
    required this.text,
    required this.icon,
  });

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(
              icon,
              color: Colors.black,
            ),
            onPressed: null,
            tooltip: text,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }
}
