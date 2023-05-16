import 'dart:typed_data';

class SoundRecording {
  Uint8List rawBytes;
  String name;

  SoundRecording({
    required this.rawBytes,
    required this.name,
  });
}
