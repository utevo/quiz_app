import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

var questions = [
  'Your favourite animal?',
  'Your favourite food',
];

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIdx = 0;

  _ansewerQuestion() {
    setState(() {
      switch (_questionIdx) {
        case (0):
          _questionIdx = 1;
          break;
        case (1):
          _questionIdx = 0;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIdx]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _ansewerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: _ansewerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: _ansewerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
