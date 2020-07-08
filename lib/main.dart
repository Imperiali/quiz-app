import 'package:firtApp/result.dart';
import 'package:flutter/material.dart';

import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Which is the correct choice?',
      'answers': [
        {'text':'Charmander', 'score': 10},
        {'text':'Squirtle', 'score': 5},
        {'text':'Bulbasour', 'score': 0},
      ]
    },
    {
      'questionText': 'What is the type of Charmander?',
      'answers': [
        {'text':'Water', 'score': 0},
        {'text':'Fair', 'score': 0},
        {'text':'Fire', 'score': 5},
      ]
    },
    {
      'questionText': 'What is the type of Squirtle?',
      'answers': [
        {'text':'Dragon', 'score': 0},
        {'text':'Water', 'score': 5},
        {'text':'Poison', 'score': 0},
      ]
    },
    {
      'questionText': 'What is the color of Bulbasaur?',
      'answers': [
        {'text':'Grass', 'score': 0},
        {'text':'Green', 'score': 5},
        {'text':'Ghost', 'score': 0},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    if (_questionIndex < _questions.length) {
      print('More questions to come');
    }
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First App!!!'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_answerQuestion, _questions, _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
