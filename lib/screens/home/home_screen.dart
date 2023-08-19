import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sound_recognizer/common/component/audio_record_view.dart';
import 'package:sound_recognizer/common/enum/app_mode.dart';
import 'package:sound_recognizer/component/variant_picker.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  AppMode currentMode = AppMode.recognition;
  List<int> soundValues = List.filled(32, 0);

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    Timer.periodic(const Duration(milliseconds: 200), (timer) {
      final random = Random();

      for (int i = 1; i < soundValues.length; i++) {
        soundValues[i - 1] = soundValues[i];
      }

      setState(() {
        soundValues[soundValues.length - 1] = random.nextInt(150);
      });
    });

    return Scaffold(
      backgroundColor: const Color(0xFF191C1E),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 48),
            child: AudioRecordView(
              soundValues: soundValues,
              // barsNumber: 8,
              maxAmplitude: 100,
              maxHeight: 100,
              minHeight: 0,
              barColor: Colors.orange,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              VariantPicker<AppMode>(
                currentElement: currentMode,
                variants: AppMode.values,
                stringBuilder: (mode) {
                  return (mode == AppMode.recognition)
                      ? "Recognition"
                      : "Recording";
                },
                onChange: (mode) {
                  setState(() {
                    currentMode = mode;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FloatingActionButton.large(
                      onPressed: () {},
                      backgroundColor: const Color(0xFFEE675C),
                      child: const Icon(
                        Icons.mic,
                        color: Colors.black87,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
