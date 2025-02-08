import 'package:flutter/material.dart';

class SectionWidget extends StatelessWidget {
  const SectionWidget({Key? key, required this.title, required this.content})
      : super(key: key);
  final String title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
          textAlign: TextAlign.center,
        ),
        Card(
          color: Colors.blue.shade100,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(width: 300, child: content),
          ),
        ),
      ],
    );
  }
}
