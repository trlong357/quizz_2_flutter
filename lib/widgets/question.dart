import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question(this.question, {super.key});
  final String question;
  @override
  Widget build(BuildContext context) {
    return Text(
      question,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
