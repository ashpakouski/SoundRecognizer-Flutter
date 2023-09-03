import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sound_recognizer/common/enum/app_mode.dart';
import 'package:sound_recognizer/utils/sound_recorder.dart';

part 'recognizer_state.dart';

part 'recognizer_cubit.freezed.dart';

class RecognizerCubit extends Cubit<RecognizerState> {
  RecognizerCubit() : super(const RecognizerState.initial(AppMode.recognition));

  final SoundRecorder _soundRecorder = SoundRecorder();

  void switchMode(AppMode newMode) {
    state.mapOrNull(initial: (_) => emit(RecognizerState.initial(newMode)));
  }

  void startRecording() {
    state.mapOrNull(initial: (s) {
      (s.mode == AppMode.recording) ? _startRecording() : _startRecognition();
    }, recordingInProgress: (_) {
      _stopRecording();
    }, recognitionInProgress: (_) {
      emit(const RecognizerState.initial(AppMode.recognition));
    });
  }

  void _startRecording() {
    emit(const RecognizerState.recordingInProgress());
    _startSoundRecording();
  }

  void _stopRecording() async {
    final soundValues = await _soundRecorder.stopRecording();

    emit(RecognizerState.recordingCompleted(soundValues));

    emit(const RecognizerState.initial(AppMode.recording));
  }

  void _startRecognition() {
    emit(const RecognizerState.recognitionInProgress());
    _startSoundRecording();
  }

  void _startSoundRecording() async {
    await _soundRecorder.open();
    _soundRecorder.startRecording();
  }
}
