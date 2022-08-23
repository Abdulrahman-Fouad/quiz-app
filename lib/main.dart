import 'package:flutter/material.dart';
import '/quiz.dart';
import '/result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;

  final List _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Red', 'score': 5},
        {'text': 'Blue', 'score': 4},
        {'text': 'White', 'score': 3},
        {'text': 'Black', 'score': 2},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Cat', 'score': 5},
        {'text': 'Dog', 'score': 4},
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Fish', 'score': 2},
      ]
    },
    {
      'questionText': 'Who\'s your favourite const?',
      'answers': [
        {'text': 'C', 'score': 5},
        {'text': 'D', 'score': 4},
        {'text': 'R', 'score': 3},
        {'text': 'F', 'score': 2},
      ]
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    // print(_totalScore);
    setState(() => _questionIndex++);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('First App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(_questions, _questionIndex, _answerQuestion)
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
