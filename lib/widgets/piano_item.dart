import 'package:flutter/material.dart';
import 'package:simple_pianos_app/Models/piano_model.dart';

class PianoItem extends StatelessWidget {
  final PianoModel pianoModel;
  const PianoItem({super.key, required this.pianoModel});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
            onTap: () {
              pianoModel.playSound();
            },
            child: Container(
              color: pianoModel.color,
            )));
  }
}
