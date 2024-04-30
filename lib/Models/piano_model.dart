import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PianoModel {
  final Color color;
  final String audiosource;

  const PianoModel({required this.color, required this.audiosource});
  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(audiosource));
  }
}
