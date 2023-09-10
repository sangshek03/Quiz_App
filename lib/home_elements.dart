import 'package:flutter/material.dart';
import 'package:fun_quiz_app/quiz_button.dart';

class Elements extends StatelessWidget {
  const Elements(this.homepagetitle, {super.key});

  final String homepagetitle;

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/images/quiz-logo.png", width: 200),
        const SizedBox(
          height: 50,
        ),
        Text(
          homepagetitle,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const QuizButton('Start Quiz'),
      ],
    );
  }
}


