import 'package:flutter/material.dart';
//In order to play Local Assets, you must use the AudioCache class.
//https://github.com/luanpotter/audioplayers/blob/master/doc/audio_cache.md
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  //1. function type is Expanded? because we return an Expanded Widget
  //2. parameter data type is Color?
  //3. I though FlatButton require to have onPressed as well as child, and I didn't know it has color property
  //4. each container/flatButton has width: double.infinity, but easier way is to change Column
  Widget expandedFlatButton({Color color, int number}) {
    return Expanded(
      child: (FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('note$number.wav');
        },
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              expandedFlatButton(color: Colors.red, number: 1),
              expandedFlatButton(color: Colors.orange, number: 1),
              expandedFlatButton(color: Colors.yellow, number: 1),
              expandedFlatButton(color: Colors.green, number: 1),
              expandedFlatButton(color: Colors.teal, number: 1),
              expandedFlatButton(color: Colors.blue, number: 1),
              expandedFlatButton(color: Colors.purple, number: 1),
            ],
          ),
        ),
      ),
    );
  }
}
