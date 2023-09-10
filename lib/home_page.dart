import 'package:flutter/material.dart';
import 'package:fun_quiz_app/home_elements.dart';


class HomePage extends StatelessWidget {
  const HomePage(this.homePageText, {super.key});

  final String homePageText;

  @override
  Widget build(context) {
    return Container(
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
      child: Center(
        child: Elements(homePageText),
      ),
    );
  }
}


