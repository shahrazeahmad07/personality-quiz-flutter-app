import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final questions;
  final questionIndex;
  final buttonFunction;
  Quiz({this.questions, this.questionIndex, this.buttonFunction});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]["Question"] as String),
        ...(questions[questionIndex]["Answers"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => buttonFunction(answer['score']), answer['text']);
        }),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
