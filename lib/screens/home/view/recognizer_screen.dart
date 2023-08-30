import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sound_recognizer/common/enum/app_mode.dart';
import 'package:sound_recognizer/component/variant_picker.dart';
import 'package:sound_recognizer/component/wave_animation.dart';
import 'package:sound_recognizer/screens/home/cubit/recognizer_cubit.dart';

// Main app screen
class RecognizerScreen extends StatelessWidget {
  const RecognizerScreen({super.key});

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
                if (cubit.state is RecognitionStartedState ||
                    cubit.state is RecordingStartedState)
                  _centeredWaveAnimation(screenWidth),
                Center(
                  child: MaterialButton(
                    onPressed: () {
                      cubit.startRecording();
                    },
                    color: const Color(0xFFEE675C),
                    textColor: Colors.white,
                    child: SizedBox(
                      height: screenWidth / 3,
                      width: screenWidth / 3,
                      child: state.mapOrNull(
                            recognitionStarted: (_) =>
                                _iconSquare(screenWidth / 4.5),
                            recordingStarted: (_) =>
                                _iconSquare(screenWidth / 4.5),
                          ) ??
                          _iconMic(screenWidth / 3.5),
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
                      child: cubit.state.mapOrNull(
                            initial: (state) => Center(
                              child: VariantPicker<AppMode>(
                                currentElement: state.mode,
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
                          ) ??
                          Container(),
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

  Widget _iconMic(double size) {
    return Icon(
      Icons.mic,
      size: size,
    );
  }

  Widget _iconSquare(double size) {
    return Icon(
      Icons.square_rounded,
      size: size,
    );
  }

  Widget _centeredWaveAnimation(double screenWidth) {
    return Center(
      child: WaveAnimation(
        color: const Color(0xFFEE675C),
        size: screenWidth / 2,
      ),
    );
  }
}
