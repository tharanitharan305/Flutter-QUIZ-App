import 'package:flutter/material.dart';

class start_screen extends StatelessWidget {
  start_screen(this.screen, {super.key});
  final void Function() screen;
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'images/quiz-logo.png',
          color: Color.fromARGB(120, 255, 255, 255),
        ),
        const SizedBox(
          height: 40 + 40,
        ),
        const Text(
          'Learn Flutter the Funny Way',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        OutlinedButton.icon(
          onPressed: () {
            screen();
          },
          icon: Icon(Icons.arrow_forward),
          label: Text('Start Quiz'),
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
        )
      ],
    ));
  }
}
