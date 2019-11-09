import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //final is runtime constant value.
  //const is compile value.
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity, //infinity means matching parent
        margin: EdgeInsets.only(bottom: 5, left: 20, right: 20),
        child: RaisedButton(
          color: Colors
              .blue, // Colors.blue is a static const property which can be accessed everywhere.
          // It is bit different from enum cause enum is just integer
          //and static const is more complex value like hexcode or binary
          textColor: Colors.white,
          child: Text(answerText),
          onPressed: selectHandler,
        ));    
  }
}


