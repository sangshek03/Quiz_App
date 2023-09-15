import 'package:flutter/material.dart';
import 'package:fun_quiz_app/data/questions.dart';
import 'package:fun_quiz_app/questions_summary.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fun_quiz_app/home_page.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.choosenAnswers, required this.restartButton});

  final List<String> choosenAnswers;
  final void Function() restartButton;

  List<Map<String, Object>> getDataSummary() {
    final List<Map<String, Object>> data = [];

    for (var i = 0; i < questions.length; i++) {
      data.add({
        'index': i,
        'question': questions[i].quesText,
        'correctAns': questions[i].options[0],
        'choosenAns': choosenAnswers[i],
      });
    }
    return data;
  }

  @override
  Widget build(context) {
    var correctAnswers = 0;
    var totalquestions = questions.length;

    for (var i = 0; i < questions.length; i++) {
      if (questions[i].options[0] == choosenAnswers[i]) {
        correctAnswers++;
      }
    }

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Your Sorce is $correctAnswers/$totalquestions !",
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              const Divider(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              const SizedBox(
                height: 10,
              ),
              QuestionSummary(summaryData: getDataSummary()),
              const SizedBox(
                height: 40,
              ),
              TextButton.icon(
                  onPressed: restartButton,
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 6, 22, 89),
                    foregroundColor: Colors.white,
                  ),
                  icon: const Icon(Icons.replay_circle_filled),
                  label: const Text('Try Again')),
            ],
          ),
        ),
      ),
    );
  }
}
