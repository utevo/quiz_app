import 'package:flutter/material.dart';

import './quiz.dart';

void main() {
  runApp(MyApp());
}

var questions = [
  {
    'questionText': 'What is your favourite food?',
    'answers': ['pizza', 'sphaghetii', 'salomon', 'burger']
  },
  {
    'questionText': 'What is your favourite animal?',
    'answers': ['cat', 'dog', 'elephant', 'snake']
  },
];

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIdx = 0;

  _answerQuestion() {
    setState(() {
      _questionIdx = _questionIdx + 1;
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
                answerQuestion: _answerQuestion,
              )
            : Center(child: Text('Good job!')),
      ),
    );
  }
}
