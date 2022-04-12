import 'dart:typed_data';
import 'package:flutter_sound/flutter_sound.dart';

class SoundPlayer {
  final FlutterSoundPlayer _soundPlayer = FlutterSoundPlayer();

  /// Method assumes, that sound values with defined properties are passed.
  Future<void> play(List<int> soundValues) async {
    if (!_soundPlayer.isOpen()) {
      await _soundPlayer.openPlayer();
    }

    _soundPlayer.startPlayer(
      fromDataBuffer: Uint8List.fromList(soundValues),
      sampleRate: 44100,
      codec: Codec.pcm16,
      numChannels: 1,
    );
  }
}
