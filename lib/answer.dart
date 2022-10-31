import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer(this.x,this.answerQuestion,{super.key});

  final String answerQuestion;
  final Function() x;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: x,
        child:  Text(answerQuestion,style: const TextStyle(fontSize: 30),),
      ),
    );
  }
}