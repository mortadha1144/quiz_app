import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer(this.x, this.answerQuestion, {super.key});

  final String answerQuestion;
  final Function() x;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: x,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Text(
            answerQuestion,
            style: const TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
