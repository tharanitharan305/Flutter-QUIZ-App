import 'package:flutter/material.dart';

class ResultText extends StatelessWidget {
  ResultText(this.list, {super.key});
  final list;
  Widget build(context) {
    final Color color = list['correctanswer'] == list['choosenanswer']
        ? Colors.greenAccent
        : Colors.redAccent;
    return Text(
      list['choosenanswer'] as String,
      style: TextStyle(color: color),
    );
  }
}
