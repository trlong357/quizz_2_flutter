import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer(this.answer, this.selectHandler, {super.key});
  final String answer;
  // final bool isCorrect;
  final VoidCallback selectHandler;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler,
        style: ButtonStyle(
          // backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) return Colors.redAccent;
            return null;
          }),
        ),
        child: Text(answer),
      ),
    );
  }
}
