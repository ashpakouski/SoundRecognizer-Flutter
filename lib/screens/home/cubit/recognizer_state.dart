part of 'recognizer_cubit.dart';

@freezed
class RecognizerState with _$RecognizerState {
  const factory RecognizerState.initial(
    AppMode mode,
  ) = _InitialState;

  const factory RecognizerState.recordingInProgress() =
      _RecordingInProgressState;

  const factory RecognizerState.recognitionInProgress() =
      _RecognitionInProgressState;

  const factory RecognizerState.recognitionSucceeded(String objectName) =
      _RecognitionSucceededState;

  const factory RecognizerState.recognitionFailed() = _RecognitionFailedState;

  const factory RecognizerState.recordingCompleted(List<int> soundValues) =
      _RecordingCompletedState;

  const factory RecognizerState.recordingFailed() = _RecordingFailedState;
}
