import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 400,
      child: Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 6, 29, 48),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: SingleChildScrollView(
          child: Column(
            children: summaryData.map((data) {
              return Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 66, 4, 250),
                    ),
                    child: Text(
                      ((data['index'] as int) + 1).toString(),
                      style: const TextStyle(
                        color: Color.fromARGB(255, 251, 251, 251),
                        fontSize: 25,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      // padding: const EdgeInsetsDirectional.only(
                      //   bottom: 5,
                      // ),

                      child: Column(
                        children: [
                          Text(
                            ('Question:   ' + data['question'].toString())
                                .toString(),
                            style: const TextStyle(
                                color: Color.fromARGB(255, 211, 198, 252)),
                            textAlign: TextAlign.center,
                          ),
                          // const SizedBox(height: 5,),
                          Text(
                            data['choosenAns'].toString(),
                            style: const TextStyle(
                                color: Color.fromARGB(255, 227, 241, 29)),
                            textAlign: TextAlign.center,
                          ),
                          // const SizedBox(height: 5,),
                          Text(
                            data['correctAns'].toString(),
                            style: const TextStyle(
                                color: Color.fromARGB(255, 233, 64, 52)),
                            textAlign: TextAlign.center,
                            // textDirection: TextAlign.justify,
                          ),
                          Container(
                            padding: const EdgeInsets.all(3),
                            child: const Divider(
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          // const SizedBox(height: 5,),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
