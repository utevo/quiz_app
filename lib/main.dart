import 'package:flutter/material.dart';

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
  var questionIdx = 0;

  ansewerQuestion() {
    setState(() {
      questionIdx = questionIdx + 1;
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
            Text(questions[questionIdx]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: ansewerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: ansewerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: ansewerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
