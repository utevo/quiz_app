import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIdx;
  final Function onAnswer;

  Quiz({
    @required this.questions,
    @required this.questionIdx,
    @required this.onAnswer,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIdx]['questionText']),
        ...(questions[questionIdx]['answers'] as List<Map<String, Object>>)
            .map((answer) => Answer(
                  answer['text'],
                  () => onAnswer(answer['score']),
                ))
        // Answer(_ansewerQuestion),
      ],
    );
  }
}
