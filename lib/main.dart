import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_audio_waveforms/flutter_audio_waveforms.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:grpc/grpc.dart';
import 'package:http/io_client.dart';
import 'package:sound_recognizer/generated/sound_service.pbgrpc.dart';
import 'package:sound_recognizer/utils/sound_player.dart';
import 'package:sound_recognizer/utils/sound_recorder.dart';

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
            mainAxisAlignment: MainAxisAlignment.start,
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
              Expanded(
                child: Center(
                  child: ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        recognitionResult = null;
                      });

                      await _soundRecorder.open();

                      List<int> soundValues = await _soundRecorder.recordSound(
                        duration: const Duration(seconds: 10),
                      );

                      setState(() {
                        doubleSounds.clear();
                        doubleSounds.addAll(soundValues.map((e) => e.toDouble()).toList());
                      });

                      // _soundPlayer.play(soundValues);

                      // final response = await _soundServiceClient.sendSound(
                      //   Sound(soundValues: soundValues),
                      // );

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

                      print("Response: $response");
                    },
                    child: const Text("Start recording"),
                  ),
                ),
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
