part of 'recorder_cubit.dart';

@immutable
abstract class RecorderState {}

class RecorderInitial extends RecorderState { }

class RecorderJobInProgress extends RecorderState {}

class RecorderJobSuccess extends RecorderState {
  final List<int> rawSoundValues;

  RecorderJobSuccess(this.rawSoundValues);
}

class RecorderJobFailure extends RecorderState { }