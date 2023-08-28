part of 'recognizer_cubit.dart';

@freezed
class RecognizerState with _$RecognizerState {
  const factory RecognizerState.initial(
    AppMode mode,
  ) = InitialState;

  const factory RecognizerState.recording() = RecognitionState;

  const factory RecognizerState.recognition() = RecordingState;
}
