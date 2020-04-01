import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetHandler ;
  Result({this.totalScore, this.resetHandler});

  String get resultPhrase {
    var resultText = 'You did it!';
    if (totalScore > 200) {
      resultText = "Your are awesome";
    } else if (totalScore > 100) {
      resultText = "Your are likeable";
    } else {
      resultText = "Your are bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        FlatButton(child: Text("Restart Quiz"), onPressed: resetHandler,)
      ],
    );
  }
}
