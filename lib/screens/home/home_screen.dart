import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sound_recognizer/common/enum/app_mode.dart';
import 'package:sound_recognizer/component/variant_picker.dart';
import 'package:sound_recognizer/component/wave_animation.dart';

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
          Center(
            child: WaveAnimation(
              color: const Color(0xFFEE675C),
              size: screen.width / 2,
            ),
          ),
          Center(
            child: MaterialButton(
              onPressed: () {},
              color: const Color(0xFFEE675C),
              textColor: Colors.white,
              child: Icon(
                Icons.mic,
                size: screen.width / 3,
              ),
              padding: const EdgeInsets.all(16),
              shape: const CircleBorder(),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Container(),
                flex: 2,
              ),
              Expanded(
                child: Center(
                  child: VariantPicker<AppMode>(
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
                ),
                flex: 1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
