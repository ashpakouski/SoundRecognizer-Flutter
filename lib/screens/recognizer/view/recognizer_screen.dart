import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sound_recognizer/screens/recognizer/cubit/recognizer_cubit.dart';
import 'package:sound_recognizer/screens/result/result_screen.dart';

class RecognizerScreen extends StatefulWidget {
  const RecognizerScreen({Key? key}) : super(key: key);

  @override
  State<RecognizerScreen> createState() => _RecognizerScreenState();
}

class _RecognizerScreenState extends State<RecognizerScreen> {

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
      body: BlocConsumer<RecognizerCubit, RecognizerState>(
        bloc: _cubit,
        listener: (context, state) {
          if (state is RecognizerJobSuccess) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return ResultScreen(recognitionResult: state.recognitionResult);
              }),
            );
          }
        },
        builder: (context, state) {
          if (state is RecognizerPreparationInProgress) {
            return _soundRecordingScreen(context);
          } else if (state is RecognizerJobInProgress) {
            return _soundRecognizingScreen(context);
          } else {
            return _initialScreen(context);
          }
        },
      ),
    );
  }

  Widget _initialScreen(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ElevatedButton(
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
            flex: 5,
          ),
          const Expanded(
            child: Text(
              "Tap to start recognition",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            flex: 2,
          ),
        ],
      ),
    );
    /*
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

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
     */
  }
}

Widget _soundRecognizingScreen(BuildContext context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () async {
              context.read<RecognizerCubit>().startRecognition();
            },
            child: const Icon(
              Icons.stop_rounded,
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
          flex: 5,
        ),
        Expanded(
          child: Column(
            children: const [
              Text(
                "Recognizing sound",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Wait a little",
              ),
            ],
          ),
          flex: 2,
        ),
      ],
    ),
  );
}

Widget _soundRecordingScreen(BuildContext context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Stack(
            children: [
              const Center(
                child: SpinKitPulse(
                  color: Colors.orangeAccent,
                  size: 450,
                  duration: Duration(seconds: 3),
                ),
              ),
              Center(
                child: SpinKitDoubleBounce(
                  color: Colors.orangeAccent.shade100,
                  size: 370,
                  duration: const Duration(seconds: 3),
                ),
              ),
              const Center(
                child: SpinKitPulse(
                  color: Colors.orangeAccent,
                  size: 290,
                  duration: Duration(seconds: 3),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () async {
                    context.read<RecognizerCubit>().forceRecognition();
                  },
                  child: const Icon(
                    Icons.stop_rounded,
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
              ),
            ],
          ),
          flex: 5,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Recording sound sample",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),

              //SizedBox(height: 20),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 32),
              //   child: Text(
              //     "Recording will be stopped automatically, but it's better to do it manually, if you are trying to recognize some quick sound",
              //     textAlign: TextAlign.center,
              //   ),
              // ),

              const SpinKitThreeBounce(
                color: Colors.orangeAccent,
                size: 30,
              ),
              Container(),
            ],
          ),
          flex: 2,
        ),
      ],
    ),
  );
}
