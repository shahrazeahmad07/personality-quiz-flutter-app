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
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 10,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            resultPhrase + "\nand your score is $_score.",
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
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
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
