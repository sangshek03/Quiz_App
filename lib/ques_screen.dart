import 'package:flutter/material.dart';
import 'package:fun_quiz_app/data/questions.dart';
import 'package:fun_quiz_app/answer_button.dart';
import 'package:google_fonts/google_fonts.dart';

class QuesScreen extends StatefulWidget {
  const QuesScreen({super.key, required this.onTapAnswer});

  final void Function(String answer) onTapAnswer;

  @override
  State<QuesScreen> createState() {
    return _QuesScreenState();
  }
}

class _QuesScreenState extends State<QuesScreen> {
  var currQuesIndex = 0;

  void answered(String selectedAns) {
    widget.onTapAnswer(selectedAns);

    setState(() {
      currQuesIndex++;
    });
  }

  @override
  Widget build(context) {
    final currQuestion = questions[currQuesIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, //for verticle allignment
            crossAxisAlignment:
                CrossAxisAlignment.stretch, //for horizontal alignment
            children: [
              Text(
                currQuestion.quesText,
                style: GoogleFonts.lato(
                  fontSize: 22,
                  color: const Color.fromARGB(255, 146, 188, 247),
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              // using map here to itrate on every option individually and if
              // any question has less then or more then 4 options then it will handle this
              // also we did not add options manually.
              // map return new list but children need only widget so we put ... (called spreading) to make it widget or indivial
              ...currQuestion.shuffulledList().map((individualoption) {
                return AnswerButton(
                    text: individualoption,
                    onTap: () {
                      answered(individualoption);
                    });
              }),

              // AnswerButton(text: currQuestion.options[0], onTap: () {}),
              // AnswerButton(text: currQuestion.options[1], onTap: () {}),
              // AnswerButton(text: currQuestion.options[2], onTap: () {}),
              // AnswerButton(text: currQuestion.options[3], onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
