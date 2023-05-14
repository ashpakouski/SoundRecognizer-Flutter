import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';
import 'package:sound_recognizer/generated/sound_service.pbgrpc.dart';

class SoundRepository {
  final ClientChannel _grpcClientChannel = ClientChannel(
    // "192.168.100.8",
    "113.30.188.201",
    // "192.168.100.2",
    port: 8099,
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );

  final _dio = Dio();

  Future<void> postSound(Sound sound) async {
    // final file = File(fileUri);

    // fileName ??= file.path.split(Platform.pathSeparator).last;

    FormData data = FormData.fromMap({
      "sound": MultipartFile.fromBytes(
        Uint8List.fromList(sound.soundValues),
        filename: "sound-${DateTime.now().millisecondsSinceEpoch}",
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

  late final SoundServiceClient _soundServiceClient =
      SoundServiceClient(_grpcClientChannel);

  SoundServiceClient get client => _soundServiceClient;
}
