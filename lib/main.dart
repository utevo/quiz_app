import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
            Question(questions[_questionIdx]['questionText']),
            ...(questions[_questionIdx]['answers'] as List<String>)
                .map((answer) => Answer(answer, _ansewerQuestion))
            // Answer(_ansewerQuestion),
          ],
        ),
      ),
    );
  }
}
