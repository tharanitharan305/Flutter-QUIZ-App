import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:quiz/result-Screen.dart';
import '';

class ResultButton extends StatelessWidget {
  ResultButton(this.num, this.list, {super.key});

  final num;
  final list;
  Widget build(context) {
    final Color color = list['correctanswer'] == list['choosenanswer']
        ? Colors.greenAccent
        : Colors.redAccent;
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: color,
          foregroundColor: Colors.black),
      child: Text((num + 1).toString()),
    );
  }
}
