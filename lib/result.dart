import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';

class Result extends StatelessWidget {
  const Result(this.q, this.resultScore, {super.key});

  final Function() q;
  final int resultScore;

  String get resultPhrace {
    String resultText;
    if (resultScore >= 70) {
      resultText = 'You are awesome !';
    } else if (resultScore >= 40) {
      resultText = 'Pretty likable!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrace,
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: !isSwithched ? Colors.black : Colors.white,
            ),
          ),
          TextButton(
            onPressed: q,
            child: const Text(
              'Restart The App',
              style: TextStyle(fontSize: 30),
            ),
          )
        ],
      ),
    );
  }
}
