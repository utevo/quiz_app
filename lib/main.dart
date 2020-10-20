import 'package:flutter/material.dart';

import './quiz.dart';

void main() {
  runApp(MyApp());
}

var questions = [
  {
    'questionText': 'What is your favourite food?',
    'answers': [
      {'text': 'pizza', 'score': 3},
      {'text': 'sphaghetii', 'score': 4},
      {'text': 'salomon', 'score': 5},
      {'text': 'burger', 'score': 6},
    ]
  },
  {
    'questionText': 'What is your favourite animal?',
    'answers': [
      {'text': 'cat', 'score': 2},
      {'text': 'dog', 'score': 1},
      {'text': 'elephant', 'score': 4},
      {'text': 'snake', 'score': 4},
    ]
  },
];

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIdx = 0;
  var _finalScore = 0;

  handleAnswer(final int score) {
    setState(() {
      _questionIdx = _questionIdx + 1;
      _finalScore += score;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIdx < questions.length
            ? Quiz(
                questions: questions,
                questionIdx: _questionIdx,
                onAnswer: handleAnswer,
              )
            : Center(child: Text('Good job! Score: $_finalScore')),
      ),
    );
  }
}
