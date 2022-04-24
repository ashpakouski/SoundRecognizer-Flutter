import 'package:flutter/material.dart';
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
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Sound Recognizer"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: recognitionResult != null
                      ? Text(recognitionResult!,
                      style: const TextStyle(fontSize: 25),
                      textAlign: TextAlign.center)
                      : const SpinKitPouringHourGlass(
                    color: Colors.blue,
                    size: 150,
                  ),
                ),
                flex: 8,
              ),
              ElevatedButton(
                onPressed: () async {
                  await _soundRecorder.open();

                  List<int> soundValues = await _soundRecorder.recordSound(
                    duration: const Duration(seconds: 12),
                    onNewData: (newData) {
                      thisFrame = DateTime.now().millisecondsSinceEpoch;

                      if (thisFrame - lastFrame > 1000 / 15) {
                        currentAudioData.clear();

                        setState(() {
                          currentAudioData.addAll(newData);
                        });

                        lastFrame = thisFrame;
                      }
                    },
                  );

                  //_soundPlayer.play(soundValues);

                  final response = await _soundServiceClient.recognizeSound(
                    Sound(
                      soundValues: soundValues,
                      fileName: "Request.pcm",
                    ),
                  );

                  setState(() {
                    recognitionResult = response.recognitionResult
                        .map((e) =>
                    "${e.soundSourceName} - ${(e.probability * 100).toStringAsFixed(2)}%")
                        .join("\n");
                  });
                },
                child: const Text("Start recording"),
              ),
              SizedBox(
                height: 100,
                child: AudioVisualizer(
                  soundValues: currentAudioData,
                  barsNumber: 30,
                  maxAmplitude: 255,
                  maxHeight: 80,
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
