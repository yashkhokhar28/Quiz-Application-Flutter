import 'package:first/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    // throw UnimplementedError();
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questionText": "Which Color Our National Flag Have ?",
      "answers": [
        {"text": "Black", "score": 0},
        {"text": "Green", "score": 10},
        {"text": "Yellow", "score": 0},
        {"text": "Blue", "score": 0},
      ],
    },
    {
      "questionText": "Who Is Our National Animal ?",
      "answers": [
        {"text": "Black", "score": 0},
        {"text": "Raino", "score": 0},
        {"text": "Tiger", "score": 10},
        {"text": "Lion", "score": 0},
      ],
    },
    {
      "questionText": "Who Is Our National Bird ?",
      "answers": [
        {"text": "Peacock", "score": 10},
        {"text": "Sparrow", "score": 0},
        {"text": "Crow", "score": 0},
        {"text": "Parrot", "score": 0},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text("Quiz"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
            answerQuestion: _answerQuestion,
            questionIndex: _questionIndex,
            questions: _questions,
          )
              : Result(_totalScore, _resetQuiz),
        ),
      ),
    );
  }
}
