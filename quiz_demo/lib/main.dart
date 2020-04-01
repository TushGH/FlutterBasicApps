import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  int _totalScore = 0;
  var _questions = const [
    {
      'QuestionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'blue', 'score': 100},
        {'text': 'black', 'score': 70},
        {'text': 'white', 'score': 10},
        {'text': 'green', 'score': 50}
      ]
    },
    {
      'QuestionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'dog', 'score': 100},
        {'text': 'cat', 'score': 70},
        {'text': 'parrot', 'score': 50},
        {'text': 'tigr', 'score': 10}
      ]
    },
    {
      'QuestionText': 'What\'s your favorite sports?',
      'answers': [
        {'text': 'Cricket', 'score': 100},
        {'text': 'football', 'score': 70},
        {'text': 'basketball', 'score': 50},
        {'text': 'handball', 'score': 10}
        ]
    }
  ];

  void _resetQuiz(){
    _totalScore = 0 ;
    setState(() {
      _questionIndex = 0 ;
    });

  }

  void _answerQuestion(int Score) {
    _totalScore += Score;
    print(_questions.length);
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
      print(_questionIndex);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Center(
                  child: Result(totalScore: _totalScore, resetHandler: _resetQuiz),
                )),
    );
  }
}
