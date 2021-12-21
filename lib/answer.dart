import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function() buttonFunction;
  final Object? buttonText;

  const Answer(this.buttonFunction, this.buttonText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(15, 7, 15, 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50),
          primary: const Color(0xFFFF9000),
          onPrimary: const Color(0xFF000000),
        ),
        child: Text(
          buttonText as String,
          style: const TextStyle(
            fontSize: 22,
          ),
        ),
        onPressed: buttonFunction,
      ),
    );
  }
}
