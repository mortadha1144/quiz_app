import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(this.q,{super.key});

  final Function() q;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text(
            'Done !',
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: q,
            child: const Text('Restart The App',style: TextStyle(fontSize: 30),),
          )
        ],
      ),
    );
  }
}
