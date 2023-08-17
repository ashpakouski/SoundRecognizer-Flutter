import 'package:flutter/material.dart';
import 'package:sound_recognizer/common/enum/app_mode.dart';
import 'package:sound_recognizer/component/variant_picker.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  AppMode currentMode = AppMode.recognition;

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFF201D1D),
      body: Stack(
        children: [
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
                    Container(width: screen.width / 3),
                    SizedBox(
                      width: screen.width / 3,
                      child: Center(
                        child: FloatingActionButton.large(
                          onPressed: () {},
                          backgroundColor: const Color(0xFFE1FE3B),
                          child: const Icon(
                            Icons.mic,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screen.width / 3,
                      child: Center(
                        child: FloatingActionButton.small(
                          onPressed: () {},
                          backgroundColor: const Color(0xFFE1FE3B),
                          child: const Icon(
                            Icons.swap_horiz,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
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
