import 'package:flutter/material.dart';
import 'package:quiz/QuestionScreen.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/start_screen.dart';
import 'package:quiz/result-Screen.dart';

class Quiz extends StatefulWidget {
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  String activeScreen = 'start_screen';
  final List<String> SelectedAnswers = [];
  void changeScreen() {
    setState(() {
      activeScreen = 'QuestionScreen';
    });
  }

  void updateAnswer(answer) {
    SelectedAnswers.add(answer);
    if (SelectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result_screen';
        //SelectedAnswers.clear();
      });
    }
  }

  Widget build(context) {
    Widget active = start_screen(changeScreen);
    if (activeScreen == 'QuestionScreen') {
      active = QuestionScreen(updateAnswer);
    } else if (activeScreen == 'result_screen') {
      active = ResultScreen(SelectedAnswers);
    }
    return MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.deepPurple,
        body: Container(
            decoration: BoxDecoration(color: Colors.deepPurple), child: active),
      ),
    );
  }
}
