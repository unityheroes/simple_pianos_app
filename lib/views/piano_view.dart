import 'package:flutter/material.dart';
import 'package:simple_pianos_app/Models/piano_model.dart';
import 'package:simple_pianos_app/widgets/piano_item.dart';

class PianoView extends StatelessWidget {
  final List<PianoModel> Pianoitem = const [
    PianoModel(color: Colors.deepPurpleAccent, audiosource: 'note1.wav'),
    PianoModel(color: Colors.deepOrangeAccent, audiosource: 'note2.wav'),
    PianoModel(color: Colors.deepPurple, audiosource: 'note3.wav'),
    PianoModel(color: Colors.lime, audiosource: 'note4.wav'),
    PianoModel(color: Colors.amber, audiosource: 'note5.wav'),
    PianoModel(color: Colors.grey, audiosource: 'note6.wav'),
    PianoModel(color: Colors.purple, audiosource: 'note7.wav'),
  ];

  const PianoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 28, 39, 31),
          title: const Text(
            "Simple Piano",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: Pianoitem.map((e) => PianoItem(pianoModel: e)).toList(),
        ));
  }
}
