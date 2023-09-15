import 'package:flutter/material.dart';
import 'package:fun_quiz_app/data/questions.dart';
import 'package:fun_quiz_app/elements.dart';
import 'package:fun_quiz_app/ques_screen.dart';
import 'package:fun_quiz_app/result_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return _HomepageState();
  }
}

class _HomepageState extends State<HomePage> {

   List<String> selectedAnswer = [];

  Widget? currElements;

  @override
  void initState() {
    currElements = Elements(switchScreen);
    super.initState();
  }

  void storeAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        currElements = ResultScreen(choosenAnswers: selectedAnswer, restartButton: endscreen);
        selectedAnswer = [];
      });
    }
  }

  void endscreen(){
      setState(() {
      currElements = QuesScreen(
        onTapAnswer: storeAnswer,
      );
      selectedAnswer = [];
    });
    
  }

  void switchScreen() {
    setState(() {
      currElements = QuesScreen(
        onTapAnswer: storeAnswer,
      );
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 0, 37, 82),
                Color.fromARGB(255, 10, 63, 126),
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
          child: currElements,
        ),
      ),
    );
  }
}
