import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _score;
  final void Function() reset;
  const Result(this._score, this.reset);

  String get resultPhrase {
    String result = "";
    if (_score < 24) {
      result = "You are a good person";
    } else if (_score < 30) {
      result = "You are a great person";
    } else if (_score == 30) {
      result = "    You are best..!";
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    print("Final Score: $_score");
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase + "\nand your score is $_score.",
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: reset,
            child: const Text(
              "Reset Quiz",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
