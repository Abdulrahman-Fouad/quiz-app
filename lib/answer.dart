import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function() funct;
  const Answer(this.answerText, this.funct, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: funct,
        child: Text(
          answerText,
          style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
    );
  }
}
