import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sound_recognizer/common/component/audio_visualizer.dart';
import 'package:sound_recognizer/repository/sound_repository.dart';
import 'package:sound_recognizer/screens/recognizer/cubit/recognizer_cubit.dart';
import 'package:sound_recognizer/utils/sound_recorder.dart';

import 'package:sound_recognizer/generated/sound_service.pbgrpc.dart';

class RecognizerScreen extends StatefulWidget {
  const RecognizerScreen({Key? key}) : super(key: key);

  @override
  State<RecognizerScreen> createState() => _RecognizerScreenState();
}

class _RecognizerScreenState extends State<RecognizerScreen> {
  final SoundRecorder _soundRecorder = SoundRecorder();
  final List<int> currentAudioData = [];

  int lastFrame = 0;
  int thisFrame = DateTime.now().millisecondsSinceEpoch;

  final SoundRepository _soundRepository = SoundRepository();

  String? recognitionResult =
      "Просто тыкни кнопку выше и жди 10-15 секунд, тут ещё ничего не готово 🙂";
  List<double> doubleSounds = [];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    final _cubit = context.watch<RecognizerCubit>();

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Recognition",
            style: TextStyle(
              fontSize: 28,
              color: Colors.black87,
              fontFamily: 'Nunito',
            ),
            textAlign: TextAlign.center,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        toolbarHeight: 50,
      ),
      body: BlocBuilder<RecognizerCubit, RecognizerState>(
        bloc: _cubit,
        builder: (context, state) {
          if (state is RecognizerInitial) {
            return _initialScreen(context);
          } else if (state is RecognizerPreparationInProgress) {
            return const Text("RecognizerPreparationInProgress");
          } else if (state is RecognizerJobInProgress) {
            return const Text("RecognizerJobInProgress");
          } else if (state is RecognizerJobSuccess) {
            return const Text("RecognizerJobSuccess");
          } else {
            return Text("Current state: $state");
          }
        },
      ),
    );
  }

  Widget _initialScreen(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () async {
            context.read<RecognizerCubit>().startRecognition();
          },
          child: const Icon(
            Icons.mic,
            color: Colors.white,
            size: 120,
          ),
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(25),
            primary: const Color(0xFFFF6C63),
            onPrimary: Colors.black87,
          ),
        ),
        ///////////
        // ElevatedButton(
        //   onPressed: () async {
        //     // _cubit.
        //
        //     setState(() {
        //       recognitionResult = null;
        //     });
        //
        //     await _soundRecorder.open();
        //
        //     List<int> soundValues = await _soundRecorder.recordSound(
        //       duration: const Duration(seconds: 10),
        //       onNewData: (newData) {
        //         setState(() {
        //           currentAudioData.clear();
        //           currentAudioData.addAll(newData);
        //         });
        //       },
        //     );
        //
        //     final deviceInfo = await DeviceInfoPlugin().androidInfo;
        //
        //     final response = await _soundRepository.client.recognizeSound(
        //       Sound(
        //         soundValues: soundValues,
        //         fileName:
        //             "Request-${deviceInfo.device}-${deviceInfo.brand}-[${DateTime.now().hour}:${DateTime.now().minute}].pcm",
        //       ),
        //     );
        //
        //     /*
        //           setState(() {
        //             recognitionResult = response.recognitionResult
        //                 .map((e) =>
        //                     "${e.soundSourceName} - ${(e.probability * 100).toStringAsFixed(2)}%")
        //                 .join("\n");
        //           });
        //
        //           print("Response: $response");
        //            */
        //   },
        //   child: const Icon(
        //     Icons.mic,
        //     color: Colors.white,
        //     size: 70,
        //   ),
        //   style: ElevatedButton.styleFrom(
        //     shape: const CircleBorder(),
        //     padding: const EdgeInsets.all(25),
        //     primary: Colors.pinkAccent,
        //     onPrimary: Colors.black87,
        //   ),
        // ),
        recognitionResult != null
            ? Padding(
                padding: const EdgeInsets.all(16),
                child: Text(recognitionResult!,
                    style: const TextStyle(fontSize: 25),
                    textAlign: TextAlign.center),
              )
            : const Text("Nothing to show"),
        SizedBox(
          height: 100,
          child: AudioVisualizer(
            soundValues: currentAudioData,
            barsNumber: 15,
            maxAmplitude: 255,
            maxHeight: 90,
            minHeight: 10,
            animationDuration: const Duration(milliseconds: 100),
            barWidth: 5,
            barRadius: BorderRadius.circular(5),
            barPadding: const EdgeInsets.symmetric(horizontal: 2),
            barColor: Colors.green,
          ),
        ),
      ],
    );
  }
}
