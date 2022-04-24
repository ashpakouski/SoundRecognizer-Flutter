import 'dart:async';

import 'package:audio_session/audio_session.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:permission_handler/permission_handler.dart';

class SoundRecorder {
  final FlutterSoundRecorder _soundRecorder = FlutterSoundRecorder();
  StreamSubscription? _recordingStreamSubscription;
  final List<int> _soundBuffer = [];

  Future<void> open() async {
    await checkPermission();

    // The code below is executed only in case, when permission is granted.

    await _soundRecorder.openRecorder();

    final audioSession = await AudioSession.instance;
    await audioSession.configure(
      AudioSessionConfiguration(
        avAudioSessionCategory: AVAudioSessionCategory.playAndRecord,
        avAudioSessionCategoryOptions:
            AVAudioSessionCategoryOptions.allowBluetooth |
                AVAudioSessionCategoryOptions.defaultToSpeaker,
        avAudioSessionMode: AVAudioSessionMode.spokenAudio,
        avAudioSessionRouteSharingPolicy:
            AVAudioSessionRouteSharingPolicy.defaultPolicy,
        avAudioSessionSetActiveOptions: AVAudioSessionSetActiveOptions.none,
        androidAudioAttributes: const AndroidAudioAttributes(
          contentType: AndroidAudioContentType.music,
          flags: AndroidAudioFlags.none,
          usage: AndroidAudioUsage.voiceCommunication,
        ),
        androidAudioFocusGainType: AndroidAudioFocusGainType.gain,
        androidWillPauseWhenDucked: true,
      ),
    );
  }

  Future<void> startRecording({Function(List<int>)? onNewData}) async {
    var recordingDataController = StreamController<Food>();

    await _soundRecorder.startRecorder(
      toStream: recordingDataController.sink,
      codec: Codec.pcm16,
      numChannels: 1,
      sampleRate: 44000,
    );

    _soundBuffer.clear();

    _recordingStreamSubscription = recordingDataController.stream.listen((buffer) async {
      if (buffer is FoodData) {
        _soundBuffer.addAll(buffer.data!);

        if (onNewData != null) {
          onNewData(buffer.data!);
        }
      }
    });
  }

  Future<List<int>> stopRecording() async {
    await _soundRecorder.stopRecorder();
    await _recordingStreamSubscription?.cancel();
    return _soundBuffer;
  }

  Future<List<int>> recordSound({
    required Duration duration,
    Function(List<int>)? onNewData
  }) async {
    await startRecording(onNewData: onNewData);
    return Future.delayed(duration, stopRecording);
  }

  Future<void> checkPermission() async {
    final microphonePermissionStatus = await Permission.microphone.request();

    if (microphonePermissionStatus != PermissionStatus.granted) {
      throw RecordingPermissionException(
        'Audio recording permission is not granted',
      );
    }
  }

  void reset() {}
}
