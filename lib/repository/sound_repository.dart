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

  late final SoundServiceClient _soundServiceClient = SoundServiceClient(_grpcClientChannel);

  SoundServiceClient get client => _soundServiceClient;
}
