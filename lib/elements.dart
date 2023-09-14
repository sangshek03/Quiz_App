import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Elements extends StatelessWidget {
  const Elements(this.passedFunction, {super.key});

  final void Function() passedFunction;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 200,
            color: const Color.fromARGB(158, 255, 255, 255),
          ),
          const SizedBox(
            height: 50,
          ),
           Text(
            'Knownledge is Key',
            style: GoogleFonts.lato(
              color:const Color.fromARGB(200, 255, 222, 222),
              fontSize: 28,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
            onPressed: () {
              // ......
              passedFunction();
            },
            style: ElevatedButton.styleFrom(
              // padding: const EdgeInsets.all(5),
              backgroundColor: const Color.fromARGB(255, 0, 37, 82),
            ),
            icon: const Icon(Icons.arrow_circle_right_sharp),
            label: const Text('Start Quiz Now'),
          ),
        ],
      ),
    );
  }
}

// startscreen = home_page
