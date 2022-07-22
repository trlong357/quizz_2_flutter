import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  const Score(this.finalScore, this.resetHandler, {super.key});
  final int finalScore;
  final VoidCallback resetHandler;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        const Text("Bạn đã hoàn thành hết các câu hỏi"),
        const Text("Điểm số của bạn:"),
        Text("$finalScore"),
        ElevatedButton(
          onPressed: resetHandler,
          child: const Text("Làm lại?"),
        )
      ]),
    );
  }
}
