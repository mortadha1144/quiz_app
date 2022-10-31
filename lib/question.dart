import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';

class Question extends StatelessWidget {
  const Question(this.questionText, {super.key});

  final String questionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 30,
          color: !isSwithched ? Colors.black : Colors.white,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
