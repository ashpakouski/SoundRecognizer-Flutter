import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sound_recognizer/generated/sound_service.pb.dart';
import 'package:sound_recognizer/repository/sound_repository.dart';
import 'package:sound_recognizer/utils/sound_recorder.dart';

part 'recognizer_state.dart';

class RecognizerCubit extends Cubit<RecognizerState> {
  final SoundRecorder _soundRecorder = SoundRecorder();
  final SoundRepository _soundRepository = SoundRepository();

  Timer? _autoStopTimer;

  RecognizerCubit() : super(RecognizerInitial());

  Future<void> startRecognition() async {
    emit(RecognizerPreparationInProgress());

    await _soundRecorder.open();
    _soundRecorder.startRecording();

    _autoStopTimer = Timer(const Duration(seconds: 10), () {
      forceRecognition();
    });
  }

  Future<void> forceRecognition() async {
    if (_autoStopTimer?.isActive == true) {
      _autoStopTimer?.cancel();
    }

    emit(RecognizerJobInProgress());

    final rawSound = await _soundRecorder.stopRecording();

    try {
      final RecognitionResult response = await _soundRepository.client.recognizeSound(
        Sound(
          soundValues: rawSound,
          fileName: "Request-${DateTime.now().millisecondsSinceEpoch}.pcm",
        ),
      );

      if (response.recognitionStatus == RecognitionResult_RecognitionStatus.SUCCESS) {
        emit(RecognizerJobSuccess(response));
      } else {
        emit(RecognizerJobFailure());
      }
    } catch (e) {
      emit(RecognizerJobFailure());
    }
  }
}
