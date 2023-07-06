import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
//cannot use const//AnswerButton(this.answerText,this.onAnswerTap,{super.key});
  //set positional arguments as named arguments
  const AnswerButton(
      {super.key, required this.answerText, required this.onAnswerTap});

  //required as we need values to generate from
  final String answerText;
  final void Function() onAnswerTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onAnswerTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(220, 126, 46, 130),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.all(6),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
