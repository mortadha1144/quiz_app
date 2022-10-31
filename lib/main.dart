import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
    });
  }

  void answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    print('Answer Chosen !');
  }

  final List<Map<String, Object>> _question = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Green', 'Blue', 'Yellow']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Tiger', 'Elephant', 'Lion']
    },
    {
      'questionText': 'What\'s your favorite instructor?',
      'answers': ['Mortadha1', 'Mortadha2', 'Mortadha3', 'Mortadha4']
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz App'),
      ),
      body: Container(
        child: _questionIndex < _question.length
            ? Quiz(_question, _questionIndex, answerQuestion)
            : Result(_resetQuiz),
      ),
    );
  }
}
