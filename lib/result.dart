import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText;
    if (resultScore <= 5) {
      resultText = 'You are even a Pokemon FARMER!';
    } else if (resultScore <= 10) {
      resultText = 'You are a Pokemon Trainer!';
    } else if (resultScore <= 15) {
      resultText = 'You are a Master Pokemon!';
    } else {
      resultText = 'You a Master Pokemon League!!';
    }
    print(resultScore);
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Try Again'),
            textColor: Colors.green,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
