import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  const Score(this.finalScore, this.resetHandler, {super.key});
  final int finalScore;
  final VoidCallback resetHandler;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Text(
              "Bạn đã hoàn thành hết các câu hỏi",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              "Điểm số của bạn:",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Text(
            "$finalScore",
            style: Theme.of(context).textTheme.headline3,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                onPressed: resetHandler,
                child: const Text("Làm lại?"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
