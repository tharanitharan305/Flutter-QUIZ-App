import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:quiz/Quiz.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/questionSummary.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(this.SelectedAnswers, {super.key});
  List<String> SelectedAnswers;
  List<Map<String, Object>> getSummryData() {
    final List<Map<String, Object>> summary = [];
    for (int i = 0; i < SelectedAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correctanswer': questions[i].answers[0],
        'choosenanswer': SelectedAnswers[i]
      });
    }
    return summary;
  }

  Widget build(contex) {
    final summary = getSummryData();
    final y = summary.length;
    final x = summary.where((data) {
      return data['correctanswer'] == data['choosenanswer'];
    }).length;
    return SafeArea(
        child: Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You answered $x out of $y correctly..',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(
            height: 30,
          ),
          QuestionSummary(getSummryData(), x),
          TextButton(
            onPressed: () {

            },
            child: Text('Reset quiz'),
          )
        ],
      ),
    ));
  }
}
