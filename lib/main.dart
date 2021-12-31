import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  int _totalScore = 0;

  final _questions = const [
    {
      "Question": "What is your gender",
      "Answers": [
        {'text': "male", 'score': 5},
        {'text': "female", 'score': 5},
        {'text': "better not say", 'score': 5}
      ]
    },
    {
      "Question": "What is your fav Color",
      "Answers": [
        {'text': "Green", 'score': 7},
        {'text': "Blue", 'score': 10},
        {'text': "White", 'score': 8},
        {'text': "My Fav Color is different", 'score': 5}
      ]
    },
    {
      "Question": "What is your Favourite meal",
      "Answers": [
        {'text': "Pulao", 'score': 10},
        {'text': "Biryani", 'score': 11},
        {'text': "Pizza", 'score': 9},
        {'text': "Pizza", 'score': 9},
        {'text': "Pizza", 'score': 9},
        {'text': "All", 'score': 15}
      ]
    },
  ];

  void _buttonFunction(int score) {
    print("Button pressed and $_questionIndex and $_totalScore");
    setState(() {
      _totalScore += score;
      _questionIndex++;
    });
  }

  void resetQuizButton() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EEA9),
        appBar: AppBar(
          title: const Text("Personality Quiz"),
        ),
        body: _questionIndex < _questions.length
            ? SingleChildScrollView(
                child: Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  buttonFunction: _buttonFunction,
                ),
              )
            : Result(_totalScore, resetQuizButton),
      ),
    );
  }
}
