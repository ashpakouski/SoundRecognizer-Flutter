part of 'recorder_cubit.dart';

@immutable
abstract class RecorderState {}

class RecorderInitial extends RecorderState {
  RecorderInitial() {

  }
}

class RecorderJobInProgress extends RecorderState {}