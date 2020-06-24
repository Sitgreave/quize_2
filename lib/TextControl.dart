import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  TextControl(this.selectHandler, this.answerText);
  @override

  Widget build(BuildContext context) {
    return Container(
      width: 240,
      child:
      RaisedButton(
          child: Text(answerText),
          color: Colors.green,
          textColor: Colors.white,
          onPressed: selectHandler),
    );
  }
}
