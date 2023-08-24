import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sound_recognizer/common/enum/app_mode.dart';
import 'package:sound_recognizer/component/variant_picker.dart';
import 'package:sound_recognizer/component/wave_animation.dart';
import 'package:sound_recognizer/screens/home/cubit/recognizer_cubit.dart';

// Main app screen
class RecognizerScreen extends StatefulWidget {
  const RecognizerScreen({super.key});

  @override
  State<RecognizerScreen> createState() => _RecognizerScreenState();
}

class _RecognizerScreenState extends State<RecognizerScreen> {
  AppMode currentMode = AppMode.recognition;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final cubit = RecognizerCubit();

    return Scaffold(
      backgroundColor: const Color(0xFF191C1E),
      body: BlocProvider(
        create: (_) => cubit,
        child: BlocBuilder<RecognizerCubit, RecognizerState>(
          builder: (context, state) {
            return Stack(
              children: [
                Center(
                  child: WaveAnimation(
                    color: const Color(0xFFEE675C),
                    size: screenWidth / 2,
                  ),
                ),
                Center(
                  child: MaterialButton(
                    onPressed: () {},
                    color: const Color(0xFFEE675C),
                    textColor: Colors.white,
                    child: Icon(
                      Icons.mic,
                      size: screenWidth / 3,
                    ),
                    padding: const EdgeInsets.all(16),
                    shape: const CircleBorder(),
                    elevation: 0,
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
                          currentElement: cubit.state.mode,
                          variants: AppMode.values,
                          stringBuilder: (mode) {
                            return (mode == AppMode.recognition)
                                ? "Recognition"
                                : "Recording";
                          },
                          onChange: (mode) {
                            cubit.switchMode(mode);
                          },
                        ),
                      ),
                      flex: 1,
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
