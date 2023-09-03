import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sound_recognizer/common/enum/app_mode.dart';
import 'package:sound_recognizer/component/index.dart';
import 'package:sound_recognizer/screens/home/cubit/recognizer_cubit.dart';
import 'package:sound_recognizer/screens/recording_details/view/recording_details_screen.dart';

// Main app screen
class RecognizerScreen extends StatelessWidget {
  static const routeName = "recogniser";

  const RecognizerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final cubit = RecognizerCubit();

    return Scaffold(
      backgroundColor: const Color(0xFF191C1E),
      body: BlocProvider(
        create: (_) => cubit,
        child: BlocConsumer<RecognizerCubit, RecognizerState>(
          listener: (context, state) {
            state.mapOrNull(recordingCompleted: (s) {
              Navigator.of(context).pushNamed(RecordingDetailsScreen.routeName);
            });
          },
          builder: (context, state) {
            return Stack(
              children: [
                cubit.state.mapOrNull(
                      recognitionInProgress: (_) =>
                          _centeredWaveAnimation(screenWidth),
                      recordingInProgress: (_) =>
                          _centeredWaveAnimation(screenWidth),
                    ) ??
                    Container(),
                Center(
                  child: MaterialButton(
                    onPressed: () {
                      cubit.startRecording();
                    },
                    color: const Color(0xFFEE675C),
                    textColor: Colors.white,
                    child: _buttonChild(screenWidth, state),
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

  Widget _buttonChild(double screenWidth, RecognizerState state) {
    return SizedBox(
      height: screenWidth / 3,
      width: screenWidth / 3,
      child: state.mapOrNull(
            recognitionInProgress: (_) =>
                IconSquareRounded(size: screenWidth / 4.5),
            recordingInProgress: (_) =>
                IconSquareRounded(size: screenWidth / 4.5),
          ) ??
          IconMic(size: screenWidth / 3.5),
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
