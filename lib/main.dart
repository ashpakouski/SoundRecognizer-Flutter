import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
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
      "192.168.100.8",
      port: 8099,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );

    _soundServiceClient = SoundServiceClient(_grpcClientChannel);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  await _soundRecorder.open();

                  List<int> soundValues = await _soundRecorder.recordSound(
                    duration: const Duration(seconds: 10),
                  );

                  _soundPlayer.play(soundValues);

                  final response = await _soundServiceClient.sendSound(
                    Sound(soundValues: soundValues),
                  );

                  print("Response: $response");
                },
                child: const Text("Start recording"),
              ),
              const Text("Tap to start recording"),
            ],
          ),
        ),
      ),
    );
  }
}
