import 'package:flutter/material.dart';
import 'widgets/quizzes.dart';
import 'widgets/score.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  final _quizzes = [
    {
      "question": "Long bao nhiêu tuổi?",
      "answers": [
        {"answer": "12", "correct": false},
        {"answer": "22", "correct": true},
        {"answer": "32", "correct": false},
        {"answer": "18", "correct": false},
      ]
    },
    {
      "question": "Ai là người chơi Axie vjp pro nhất",
      "answers": [
        {"answer": "Long", "correct": true},
        {"answer": "Corgi", "correct": false},
        {"answer": "Mei", "correct": false},
        {"answer": "Duy Anh", "correct": false},
      ]
    },
    {
      "question": "Long có đẹp trai không?",
      "answers": [
        {"answer": "Xấu vl", "correct": false},
        {"answer": "Quá là đẹp", "correct": true},
      ]
    },
  ];

  int _questionIndex = 0;
  int _totalScore = 0;

  void resetHandler() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void answerQuestion(bool isCorrect) {
    if (isCorrect) {
      _totalScore += 1;
    }
    setState(() {
      _questionIndex += 1;
    });
    print(_totalScore);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(title: const Text("Quizz app")),
          body: _questionIndex < _quizzes.length
              ? Quizzes(
                  answerQuestionHandler: answerQuestion,
                  questions: _quizzes,
                  questionIndex: _questionIndex,
                )
              : Score(_totalScore, resetHandler),
        ));
  }
}
