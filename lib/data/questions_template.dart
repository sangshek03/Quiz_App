// import 'package:flutter/material.dart';

class QuizQuestion {
  const QuizQuestion(this.quesText, this.options);

  final String quesText;
  final List<String> options;

  List<String> shuffulledList() {
    final List<String> optionsCopy = List.of(options);
    optionsCopy.shuffle();

    return optionsCopy;
  }
}
