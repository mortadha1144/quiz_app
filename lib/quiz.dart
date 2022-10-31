import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/answer.dart';

class Quiz extends StatelessWidget {
  const Quiz(this.question, this.questionIndex, this.answerQuestion,
      {super.key});

  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function() answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[questionIndex]['questionText'].toString()),
        ...(question[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList(),
      ],
    );
  }
}
