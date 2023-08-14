import 'package:flutter/material.dart';
import 'package:sound_recognizer/screens/home/home_screen.dart';

void main() {
  runApp(const SoundRecognizerApp());
}

class SoundRecognizerApp extends StatelessWidget {
  const SoundRecognizerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}
