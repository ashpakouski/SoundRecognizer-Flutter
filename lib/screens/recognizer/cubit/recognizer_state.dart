part of 'recognizer_cubit.dart';

@immutable
abstract class RecognizerState {}

class RecognizerInitial extends RecognizerState {}

class RecognizerPreparationInProgress extends RecognizerState {}

class RecognizerJobInProgress extends RecognizerState {}

class RecognizerJobFailure extends RecognizerState {}

class RecognizerJobSuccess extends RecognizerState {
  // final RecognitionResult recognitionResult;

  RecognizerJobSuccess();
}
