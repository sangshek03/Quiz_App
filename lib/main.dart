import 'package:flutter/material.dart';
import 'package:fun_quiz_app/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: HomePage('The Quiz App'),
      ),
    );
  }
}