///
//  Generated code. Do not modify.
//  source: sound_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'sound_service.pb.dart' as $0;
export 'sound_service.pb.dart';

class SoundServiceClient extends $grpc.Client {
  static final _$sendSound = $grpc.ClientMethod<$0.Sound, $0.EmptyResponse>(
      '/com.shpakovskiy.soundrecognizer.SoundService/sendSound',
      ($0.Sound value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EmptyResponse.fromBuffer(value));

  SoundServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.EmptyResponse> sendSound($0.Sound request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendSound, request, options: options);
  }
}

abstract class SoundServiceBase extends $grpc.Service {
  $core.String get $name => 'com.shpakovskiy.soundrecognizer.SoundService';

  SoundServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Sound, $0.EmptyResponse>(
        'sendSound',
        sendSound_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Sound.fromBuffer(value),
        ($0.EmptyResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.EmptyResponse> sendSound_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Sound> request) async {
    return sendSound(call, await request);
  }

  $async.Future<$0.EmptyResponse> sendSound(
      $grpc.ServiceCall call, $0.Sound request);
}
