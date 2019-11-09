import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //We should make this class immutable which means stop from being changed

  final String
      questionText; // After initiate the value, it is not gonna change!

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // as much width that can possibly widen.
      margin: EdgeInsets.all(20),
      child: Text(
        questionText,
        style: TextStyle(
            fontSize: 24), //Text Style is not widget just simple object.
        textAlign: TextAlign.center, //Text Align is a enum which works like label. Human readable label for programming.
      ),
    );
  }
}
