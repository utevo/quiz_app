import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIdx;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.questionIdx,
    @required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIdx]['questionText']),
        ...(questions[questionIdx]['answers'] as List<String>)
            .map((answer) => Answer(answer, answerQuestion))
        // Answer(_ansewerQuestion),
      ],
    );
  }
}
