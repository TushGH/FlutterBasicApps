import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function abc ;
  final String answerText;

  Answer(this.abc, this.answerText);



  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: RaisedButton(
        child: Text(answerText),
        color: Colors.blue,
        onPressed: abc,
      ),
    );
  }
}
