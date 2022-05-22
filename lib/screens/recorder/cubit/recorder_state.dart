part of 'recorder_cubit.dart';

@immutable
abstract class RecorderState {}

class RecorderInitial extends RecorderState { }

class RecordingInProgress extends RecorderState {}

class RecordingSuccess extends RecorderState { }

class RecordingFailure extends RecorderState { }

class RecordingProcessingInProgress extends RecorderState { }

class RecordingProcessingSuccess extends RecorderState { }

class RecordingProcessingFailure extends RecorderState { }