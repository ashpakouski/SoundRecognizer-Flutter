part of 'recognizer_cubit.dart';

@freezed
class RecognizerState with _$RecognizerState {
  const factory RecognizerState.initial(
    AppMode mode,
  ) = InitialState;

  const factory RecognizerState.recordingInProgress() =
      RecordingInProgressState;

  const factory RecognizerState.recognitionInProgress() =
      RecognitionInProgressState;

  const factory RecognizerState.recognitionSucceeded(String objectName) =
      RecognitionSucceededState;

  const factory RecognizerState.recognitionFailed() = RecognitionFailedState;

  const factory RecognizerState.recordingCompleted() = RecordingCompletedState;

  const factory RecognizerState.recordingFailed() = RecordingFailedState;
}
