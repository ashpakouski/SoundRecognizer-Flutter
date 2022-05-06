import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:sound_recognizer/repository/sound_repository.dart';
import 'package:sound_recognizer/utils/sound_recorder.dart';

part 'recorder_state.dart';

class RecorderCubit extends Cubit<RecorderState> {
  final SoundRecorder _soundRecorder = SoundRecorder();
  // final SoundRepository _soundRepository = SoundRepository();

  RecorderCubit() : super(RecorderInitial());

  void startRecording() {
    try {
      _soundRecorder.startRecording();

      emit(RecorderJobInProgress());
    } catch (e) {
      emit(RecorderJobFailure());
    }
  }

  void stopRecording() {
    _soundRecorder.stopRecording().then((value) {
      emit(RecorderJobSuccess(value));
    }, onError: (error) {
      debugPrint("Recording failed with error: $error");
      emit(RecorderJobFailure());
    });
  }
}
