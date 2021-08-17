import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class App extends StatelessWidget {
  void playSound(int note) {
    final player = AudioCache();
    player.play('assets_note$note.wav');
  }

  Expanded buildKey({Color color, int noteNumber}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(noteNumber);
        },
        color: color,
        /*style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
        ),*/
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(color: Colors.lime, noteNumber: 1),
            buildKey(color: Colors.indigo, noteNumber: 2),
            buildKey(color: Colors.purple, noteNumber: 3),
            buildKey(color: Colors.grey,noteNumber: 4),
            buildKey(color: Colors.teal,noteNumber: 5),
            buildKey(color: Colors.amber,noteNumber: 6),
            buildKey(color: Colors.green,noteNumber: 7)
          ],
        )),
      ),
    );
  }
}
