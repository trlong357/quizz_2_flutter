import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quizzes extends StatelessWidget {
  const Quizzes({
    required this.questions,
    required this.questionIndex,
    required this.answerQuestionHandler,
    super.key,
  });

  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestionHandler;

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 100),
          child: Question(questions[questionIndex]['question'] as String),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ...((questions[questionIndex]['answers'] as List).map((e) {
                return Answer(e["answer"] as String,
                    () => answerQuestionHandler(e["correct"]));
              }).toList())
            ],
          ),
        )
      ],
    );
  }
}
