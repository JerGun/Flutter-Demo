import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Note {
  Color color;
  String soundNumber;

  Note({required this.color, required this.soundNumber});
}

class Xylophone extends StatelessWidget {
  final List notes = [
    Note(color: Colors.red, soundNumber: '1'),
    Note(color: Colors.orange, soundNumber: '2'),
    Note(color: Colors.yellow, soundNumber: '3'),
    Note(color: Colors.green, soundNumber: '4'),
    Note(color: Colors.teal, soundNumber: '5'),
    Note(color: Colors.blue, soundNumber: '6'),
    Note(color: Colors.purple, soundNumber: '7'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              for (var note in notes)
                AudioButton(
                  color: note.color,
                  soundNumber: note.soundNumber,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class AudioButton extends StatelessWidget {
  const AudioButton({Key? key, required this.color, required this.soundNumber})
      : super(key: key);

  final Color color;
  final String soundNumber;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          final player = AudioCache();
          player.play('sounds/note$soundNumber.wav');
        },
        style: TextButton.styleFrom(backgroundColor: color),
        child: Text(''));
  }
}
