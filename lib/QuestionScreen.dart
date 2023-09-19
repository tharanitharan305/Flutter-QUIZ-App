import 'package:flutter/material.dart';
import 'package:quiz/AnswerButton.dart';
import 'package:quiz/Quiz.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/models/quiz_questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen(this.onSelect, {super.key});
  final void Function(String answer) onSelect;
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var i = 0;
  void iterate(String answer) {
    setState(() {
      widget.onSelect(answer);
      i++;
    });
  }

  Widget build(context) {
    final currentQuestion = questions[i];
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 30,
          ),
          ...currentQuestion.getsuffeled().map((answers) {
            return AnswerButton(
                answers: answers,
                ontap: () {
                  iterate(answers);
                });
          })
        ],
      ),
    );
  }
}
