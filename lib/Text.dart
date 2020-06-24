import 'package:flutter/material.dart';
import 'TextControl.dart';

class LocalText extends StatelessWidget {
  final Map myText;
  final Function button;
  final indexText;

  LocalText(this.myText, this.button, this.indexText);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextControl(button, 'DON\'T PUSH, OR \nI WILL BITE YOU'),
        Text(
          myText[indexText],
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
