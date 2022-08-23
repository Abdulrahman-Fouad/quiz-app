import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restartQuiz;
  const Result(this.resultScore, this.restartQuiz, {Key? key})
      : super(key: key);

  String get resultPhrase {
    String resultText;
    if (resultScore == 15) {
      resultText = 'You are Awsome';
    } else if (resultScore > 12) {
      resultText = 'You are Very Good';
    } else if (resultScore > 9) {
      resultText = 'You are Good';
    } else if (resultScore > 6) {
      resultText = 'You are Bad';
    } else {
      resultText = 'You are Very Bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 38,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
              onPressed: () => restartQuiz(),
              child: const Text('Restart Quiz!'))
        ],
      ),
    );
  }
}
