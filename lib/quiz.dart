import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List question;
  final int index;
  final Function answerFunction;

  const Quiz(this.question, this.index, this.answerFunction(int score),
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          question[index]['questionText'],
        ),
        ...question[index]['answers'].map((answer) {
          return Answer(answer['text'], () => answerFunction(answer['score']));
        })
      ],
    );
  }
}
