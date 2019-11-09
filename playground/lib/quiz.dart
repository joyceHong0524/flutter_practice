import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;
  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>)
            .map((answer) {
          // what ... does they take a list and pull all the values out of it
          //and add it to surrounding list as individual values.
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList() //map makes new list. map basically make iterable. and we need LIST!
      ],
    );
  }
}
