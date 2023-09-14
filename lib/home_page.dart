import 'package:flutter/material.dart';
import 'package:fun_quiz_app/elements.dart';
import 'package:fun_quiz_app/ques_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return _HomepageState();
  }
}

class _HomepageState extends State<HomePage> {
  // const _HomepageState({super.key});

  Widget? currElements;

  @override
  void initState() {
    currElements = Elements(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      currElements = const QuesScreen();
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
