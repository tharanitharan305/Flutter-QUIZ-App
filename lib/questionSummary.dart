import 'package:flutter/material.dart';
import 'package:quiz/ResultButton.dart';
import 'package:quiz/text.dart';

class QuestionSummary extends StatelessWidget {
  QuestionSummary(this.correctSummary, this.x, {super.key});
  final List<Map<String, Object>> correctSummary;
  final x;
  Widget build(context) {
    return SizedBox(
      height: 400,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: correctSummary.map((data) {
            return Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ResultButton(data['question_index'] as int, data),
                SizedBox(
                  height: 60,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Text(
                        data['correctanswer'] as String,
                        style: TextStyle(color: Colors.deepPurple[200]),
                      ),
                      ResultText(data)
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
