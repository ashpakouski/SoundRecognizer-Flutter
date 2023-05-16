import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:sound_recognizer/model/sound_recording.dart';

class SoundRepository {
  final _dio = Dio();

  Future<void> postSound(SoundRecording soundRecording) async {
    FormData data = FormData.fromMap({
      "sound": MultipartFile.fromBytes(
        soundRecording.rawBytes,
        filename:
            "sound-${soundRecording.name}-${DateTime.now().millisecondsSinceEpoch}",
      ),
      "data": "some other data",
    });

    try {
      final uploadingResult =
          await _dio.post("http://172.17.110.17:8099/audio", data: data);

      if (uploadingResult.statusCode == HttpStatus.ok) {
        debugPrint("Sound upload succeeded: ${uploadingResult.data}");
      }
    } on DioError catch (e) {
      debugPrint(
          "Failed to post sound: ${e.response} ${e.response?.statusCode}");
    }
  }
}
