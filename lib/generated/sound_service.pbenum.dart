///
//  Generated code. Do not modify.
//  source: sound_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class RecognitionResult_RecognitionStatus extends $pb.ProtobufEnum {
  static const RecognitionResult_RecognitionStatus SUCCESS = RecognitionResult_RecognitionStatus._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUCCESS');
  static const RecognitionResult_RecognitionStatus FAILURE = RecognitionResult_RecognitionStatus._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILURE');

  static const $core.List<RecognitionResult_RecognitionStatus> values = <RecognitionResult_RecognitionStatus> [
    SUCCESS,
    FAILURE,
  ];

  static final $core.Map<$core.int, RecognitionResult_RecognitionStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RecognitionResult_RecognitionStatus? valueOf($core.int value) => _byValue[value];

  const RecognitionResult_RecognitionStatus._($core.int v, $core.String n) : super(v, n);
}

