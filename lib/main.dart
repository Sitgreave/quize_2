// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';
import 'Text.dart';

void main() =>runApp(Zadanie());

class Zadanie extends StatefulWidget {
  @override
  _ZadanieState createState() => _ZadanieState();
}

class _ZadanieState extends State<Zadanie> {
  final myText ={
    0: 'Kovarniy pawuk sdelaet kus\'!!',
    1: 'Vas ukusil kovarniy pawuk, teper vi tozhe pawuk'
  };
  int _indexText = 0;

  void _textChange(){
    setState(() {
      if(_indexText <myText.keys.length - 1) _indexText++;
      else _indexText--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
    appBar:AppBar(
      title: Text('Zdravstvuite'),
      backgroundColor: Colors.orange
    ),
        body:  LocalText( myText, _textChange, _indexText ), backgroundColor: Colors.teal,
    )

    );
  }
}
