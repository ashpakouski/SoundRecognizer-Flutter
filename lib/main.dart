import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grpc/grpc.dart';
import 'package:sound_recognizer/generated/sound_service.pbgrpc.dart';
import 'package:sound_recognizer/utils/sound_player.dart';
import 'package:sound_recognizer/utils/sound_recorder.dart';
import 'component/audio_visualizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final SoundRecorder _soundRecorder = SoundRecorder();
  final SoundPlayer _soundPlayer = SoundPlayer();

  final List<int> currentAudioData = [];

  int lastFrame = 0;
  int thisFrame = DateTime.now().millisecondsSinceEpoch;

  late final ClientChannel _grpcClientChannel;
  late final SoundServiceClient _soundServiceClient;

  @override
  void initState() {
    _grpcClientChannel = ClientChannel(
      // "192.168.100.8",
      "113.30.188.201",
      // "192.168.100.2",
      port: 8099,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );

    _soundServiceClient = SoundServiceClient(_grpcClientChannel);

    super.initState();
  }

  String? recognitionResult = "Recognition result";
  List<double> doubleSounds = [];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Recognize",
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
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  setState(() {
                    recognitionResult = null;
                  });

                  await _soundRecorder.open();

                  List<int> soundValues = await _soundRecorder.recordSound(
                    duration: const Duration(seconds: 10),
                    onNewData: (newData) {
                      setState(() {
                        currentAudioData.clear();
                        currentAudioData.addAll(newData);
                      });
                    },
                  );

                  _soundPlayer.play(soundValues);

                  // final response = await _soundServiceClient.sendSound(
                  //   Sound(soundValues: soundValues),
                  // );

                  final response = await _soundServiceClient.recognizeSound(
                    Sound(
                      soundValues: soundValues,
                      fileName: "Request-Android-[${DateTime.now().hour}:${DateTime.now().minute}].pcm",
                    ),
                  );

                  setState(() {
                    recognitionResult = response.recognitionResult
                        .map((e) => "${e.soundSourceName} - ${(e.probability * 100).toStringAsFixed(2)}%")
                        .join("\n");
                  });

                  print("Response: $response");
                },
                child: const Icon(
                  Icons.mic,
                  color: Colors.white,
                  size: 70,
                ),
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(25),
                  primary: Colors.pinkAccent,
                  onPrimary: Colors.black87,
                ),
              ),
              recognitionResult != null
                  ? Text(recognitionResult!,
                      style: const TextStyle(fontSize: 25),
                      textAlign: TextAlign.center)
                  : const Text("Nothing to show"),
              SizedBox(
                height: 100,
                child: AudioVisualizer(
                  soundValues: currentAudioData,
                  barsNumber: 7,
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
          ),
        ),
      ),
    );
  }
}
