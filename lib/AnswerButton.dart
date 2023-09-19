import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.answers, required this.ontap});
  final String answers;
  final void Function() ontap;
  @override
  Widget build(contex) {
    return ElevatedButton(
      onPressed: ontap,
      child: Text(answers),
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          backgroundColor: Colors.blueAccent[500],
          padding: EdgeInsets.fromLTRB(40, 0, 40, 0)),
    );
  }
}
