import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sound_recognizer/generated/sound_service.pbgrpc.dart';
import 'package:sound_recognizer/repository/sound_repository.dart';
import 'package:sound_recognizer/screens/recorder/cubit/recorder_cubit.dart';

import 'package:sound_recognizer/utils/sound_recorder.dart';

class RecorderScreen extends StatefulWidget {
  const RecorderScreen({Key? key}) : super(key: key);

  @override
  State<RecorderScreen> createState() => _RecorderScreenState();
}

class _RecorderScreenState extends State<RecorderScreen> {
  final SoundRecorder _soundRecorder = SoundRecorder();

  bool _isRecording = false;
  String fileName = "Default";

  final SoundRepository _soundRepository = SoundRepository();

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
      body: BlocBuilder<RecorderCubit, RecorderState>(
        bloc: context.watch<RecorderCubit>(),
        builder: (context, state) {
          print(">>> Recorder state: $state");

          return SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const ResultScreen()),
                      // );

                      if (!_isRecording) {
                        await _soundRecorder.open();

                        _soundRecorder.startRecording();
                      } else {
                        List<int> soundValues = await _soundRecorder.stopRecording();

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

                        final response =
                            await _soundRepository.client.sendSound(
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
                    },
                    child: Icon(
                      _isRecording ? Icons.stop_rounded : Icons.mic,
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
                  const SizedBox(height: 150),
                  const Text(
                    "Tap to start recording",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
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
              onChanged: (newNumber) {
                print("new value: $newNumber");
                fileName = newNumber;
              },
              decoration: InputDecoration(
                filled: true,
                border: const OutlineInputBorder(),
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
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(24, 0, 24, 16),
          child: Text(
            "❤",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32),
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
