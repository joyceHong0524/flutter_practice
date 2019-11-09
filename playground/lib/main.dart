import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

import './quiz.dart';
import './result.dart';
//It is entry function of this app. Automatically run.
// void main(){
//   runApp(MyFuckingAwesomeApp()); //written by the flutter team in material.dart;
// }

void main() => runApp(MyApp()); // this is for function with only one expression

class MyApp extends StatefulWidget {
  //widget itself can be recreated

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //Generic class attatched to stateful widget
  // but unlike statefulwidget it can't be recreated
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What is your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'yellow', 'score': 2},
        {'text': 'blue', 'score': 5},
        {'text': 'red', 'score': 4}
      ],
    },
    {
      'questionText': 'What is your favorite animal?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'yellow', 'score': 2},
        {'text': 'blue', 'score': 5},
        {'text': 'red', 'score': 4}
      ],
    },
    {
      'questionText': 'Who is your favoirte person?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'yellow', 'score': 2},
        {'text': 'blue', 'score': 5},
        {'text': 'red', 'score': 4}
      ],
    },
  ];

  void answerQuestion(int score) {
    //add our score
    _totalScore += score;
    setState(() {
      //function that forces re-render  by calling build method again.
      // build wicget tree again.
      _questionIndex += 1; //re-rendering the myapp widget
    });
    print(_questionIndex);
  }

  void _resetQuiz() {
    //rebuild the tree..again!
    setState(() {
        _questionIndex = 0;
        _totalScore = 0;
    });
  }


  @override
  Widget build(BuildContext context) {
    //Usage of map! Can be really nice since you don't need to make object again.

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first flutter app'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore,_resetQuiz),
      ),
    ); //Scaffold : basic color skeame and etc
    //Home argument basically core widget where flutter will bring it to the screen,
    //Base setup to turn my combinational widget to do
  }
}
