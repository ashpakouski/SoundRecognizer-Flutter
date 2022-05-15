import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:sound_recognizer/generated/sound_service.pb.dart';
import 'package:sound_recognizer/repository/sound_repository.dart';
import 'package:sound_recognizer/utils/sound_recorder.dart';

part 'recorder_state.dart';

class RecorderCubit extends Cubit<RecorderState> {
  final SoundRecorder _soundRecorder = SoundRecorder();
  final SoundRepository _soundRepository = SoundRepository();
  List<int>? _lastSound; // Well, I don't like it

  RecorderCubit() : super(RecorderInitial());

  Future<void> startRecording() async {
    try {
      await _soundRecorder.open();
      _soundRecorder.startRecording();

      emit(RecordingInProgress());
    } catch (e) {
      debugPrint("Exception was actually handled");
      emit(RecordingFailure());
    }
  }

  void stopRecording() {
    _soundRecorder.stopRecording().then((value) {
      _lastSound = value;
      emit(RecordingSuccess());
    }, onError: (error) {
      _lastSound = null;
      debugPrint("Recording failed with error: $error");
      emit(RecordingFailure());
    });
  }

  void sendRecording({required String withName}) {
    if (_lastSound != null) {
      _soundRepository.client.sendSound(
          Sound(soundValues: _lastSound, fileName: withName),
      ).then(
        (_) => emit(RecordingProcessingSuccess()),
        onError: (error) => emit(RecordingProcessingFailure()),
      );
    } else {
      emit(RecordingProcessingFailure());
    }
  }
}