import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sound_recognizer/screens/recorder/cubit/recorder_cubit.dart';

class RecorderScreen extends StatefulWidget {
  const RecorderScreen({Key? key}) : super(key: key);

  @override
  State<RecorderScreen> createState() => _RecorderScreenState();
}

class _RecorderScreenState extends State<RecorderScreen> {
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
      body: BlocConsumer<RecorderCubit, RecorderState>(
        bloc: context.watch<RecorderCubit>(),
        listener: (context, state) async {
          if (state is RecordingSuccess) {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return StatefulBuilder(
                    builder: (BuildContext context, StateSetter setState) {
                  return _bottomSheet(context);
                });
              },
              isDismissible: false,
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
            ).then((recordingName) {
              context
                  .read<RecorderCubit>()
                  .sendRecording(withName: recordingName);
            });
          } else if (state is RecordingProcessingSuccess) {
            await showModalBottomSheet<void>(
              context: context,
              builder: _thanks,
              isDismissible: false,
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is RecordingInProgress) {
            return _recordingInProgressScreen(context);
          } else if (state is RecordingSuccess) {
            return _initialScreen(context);
          } else if (state is RecordingFailure) {
            return _initialScreen(context);
          } else if (state is RecordingProcessingInProgress) {
            return _recordingInProgressScreen(context);
          } else if (state is RecordingProcessingSuccess) {
            return _initialScreen(context);
          } else if (state is RecordingProcessingFailure) {
            return _initialScreen(context);
          } else {
            return _initialScreen(context);
          }
        },
      ),
    );
  }

  String? errorText;

  Widget _bottomSheet(BuildContext context) {
    TextEditingController _controller = TextEditingController();

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
              controller: _controller,
              decoration: InputDecoration(
                filled: true,
                border: const OutlineInputBorder(),
                //errorText: "This field should not be empty",
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
                onTap: () {
                  if (_controller.text != null && _controller.text.isNotEmpty) {
                    Navigator.pop(
                      context,
                      "${Platform.operatingSystem}-[${DateTime.now().hour}:${DateTime.now().minute}]-${_controller.text.trim().toLowerCase()}.pcm",
                    );
                  } else {
                    setState(() {
                      errorText = "What the fuck?";
                    });
                  }
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

Widget _initialScreen(BuildContext context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () async {
              context.read<RecorderCubit>().startRecording();
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
            "Tap to start recording",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          flex: 2,
        ),
      ],
    ),
  );
}

Widget _recordingInProgressScreen(BuildContext context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Stack(
            children: [
              Center(
                child: ElevatedButton(
                  onPressed: () async {
                    context.read<RecorderCubit>().stopRecording();
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
                "Recording sound",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
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
