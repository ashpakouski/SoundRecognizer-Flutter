import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sound_recognizer/repository/sound_repository.dart';
import 'package:sound_recognizer/utils/sound_recorder.dart';

part 'recorder_state.dart';

class RecorderCubit extends Cubit<RecorderState> {
  final SoundRecorder _soundRecorder = SoundRecorder();
  final SoundRepository _soundRepository = SoundRepository();

  RecorderCubit() : super(RecorderInitial());

  void startRecording() {
    _soundRecorder.startRecording();

    emit(RecorderJobInProgress());
  }
}
