import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/answer.dart';

class Quiz extends StatelessWidget {
  const Quiz(this.question, this.questionIndex, this.answerQuestion,
      {super.key});

  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function(int s) answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[questionIndex]['questionText'].toString()),
        ...(question[questionIndex]['answers'] as List<Map<String,Object>>).map((answer) {
          return Answer(()=>answerQuestion(int.parse(answer['score'].toString())), answer['text'].toString());
        }).toList(),
      ],
    );
  }
}
