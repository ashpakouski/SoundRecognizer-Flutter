import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grpc/grpc.dart';
import 'package:sound_recognizer/generated/sound_service.pbgrpc.dart';

import '../utils/sound_recorder.dart';

class RecorderScreen extends StatefulWidget {
  const RecorderScreen({Key? key}) : super(key: key);

  @override
  State<RecorderScreen> createState() => _RecorderScreenState();
}

class _RecorderScreenState extends State<RecorderScreen> {
  final SoundRecorder _soundRecorder = SoundRecorder();

  late final ClientChannel _grpcClientChannel;
  late final SoundServiceClient _soundServiceClient;

  bool _isRecording = false;
  String fileName = "Default";

  @override
  void initState() {
    _grpcClientChannel = ClientChannel(
      // "192.168.100.8",
      "113.30.188.201",
      port: 8099,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );

    _soundServiceClient = SoundServiceClient(_grpcClientChannel);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Recording",
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  if (!_isRecording) {
                    await _soundRecorder.open();

                    _soundRecorder.startRecording();
                  } else {
                    List<int> soundValues =
                        await _soundRecorder.stopRecording();

                    final deviceInfo = await DeviceInfoPlugin().androidInfo;

                    await showModalBottomSheet<void>(
                      context: context,
                      builder: _bottomSheet,
                      isDismissible: false,
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                      ),
                    );

                    final response = await _soundServiceClient.sendSound(
                      Sound(
                        soundValues: soundValues,
                        fileName:
                            "${deviceInfo.device}-${deviceInfo.brand}-[${DateTime.now().hour}:${DateTime.now().minute}]-${fileName.trim().toLowerCase()}.pcm",
                      ),
                    );

                    print("Response: $response");

                    await showModalBottomSheet<void>(
                      context: context,
                      builder: _thanks,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                      ),
                    );
                  }

                  setState(() {
                    _isRecording = !_isRecording;
                  });

                  // setState(() {
                  //   recognitionResult = response.recognitionResult
                  //       .map((e) => "${e.soundSourceName} - ${(e.probability * 100).toStringAsFixed(2)}%")
                  //       .join("\n");
                  // });

                  //print("Response: $response");
                },
                child: Icon(
                  _isRecording ? Icons.stop_rounded : Icons.mic,
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
            ],
          ),
        ),
      ),
      // child: ElevatedButton(
      //     child: const Text('showModalBottomSheet'),
      //     onPressed: () {
      //       showModalBottomSheet<void>(
      //         context: context,
      //         builder: _bottomSheet,
      //       );
      //     }),
    );
  }

  Widget _bottomSheet(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
          0, 0, 0, MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Text(
              "Please, enter a name of the object you've just recorded",
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: TextField(
              // controller: _cardNumberTextEditingController,
              onChanged: (newNumber) {
                print("new value: $newNumber");
                fileName = newNumber;
              },
              decoration: InputDecoration(
                filled: true,
                border: const OutlineInputBorder(),
                //labelText: 'Name of object',
                //hintText: 'Name of object',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.amber[900]!,
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
          //const Text('Modal BottomSheet'),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                //borderRadius: BorderRadius.circular(16),
                onTap: () {
                  Navigator.pop(context);
                },
                child: Ink(
                  decoration: BoxDecoration(
                    color: Colors.amber[900],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const SizedBox(
                    height: 56,
                    child: Center(
                      child: Text(
                        "Submit",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          // ElevatedButton(
          //   child: const Text('Close BottomSheet'),
          //   onPressed: () => Navigator.pop(context),
          // )
        ],
      ),
    );
  }

  Widget _thanks(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.fromLTRB(24, 24, 24, 24),
          child: Text(
            "Thanks for your contribution!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 32
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(24, 0, 24, 16),
          child: Text(
            "❤",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 32
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Ink(
                decoration: BoxDecoration(
                  color: Colors.amber[900],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const SizedBox(
                  height: 56,
                  child: Center(
                    child: Text(
                      "Glad to help!",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
