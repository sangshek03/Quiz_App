import 'package:flutter/material.dart';

class QuizButton extends StatelessWidget {
  const QuizButton(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        // padding: const EdgeInsets.all(5),
        backgroundColor: const Color.fromARGB(255, 0, 37, 82),
      ),
      child: Text(text),
    );
  }
}
