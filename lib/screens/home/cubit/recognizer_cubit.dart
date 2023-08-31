import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sound_recognizer/common/enum/app_mode.dart';

part 'recognizer_state.dart';

part 'recognizer_cubit.freezed.dart';

class RecognizerCubit extends Cubit<RecognizerState> {
  RecognizerCubit() : super(const RecognizerState.initial(AppMode.recognition));

  void switchMode(AppMode newMode) {
    state.mapOrNull(initial: (_) => emit(RecognizerState.initial(newMode)));
  }

  void startRecording() {
    state.mapOrNull(initial: (s) {
      emit((s.mode == AppMode.recording)
          ? const RecognizerState.recordingInProgress()
          : const RecognizerState.recognitionInProgress());
    }, recordingInProgress: (_) {
      emit(const RecognizerState.initial(AppMode.recording));
    }, recognitionInProgress: (_) {
      emit(const RecognizerState.initial(AppMode.recognition));
    });
  }
}
