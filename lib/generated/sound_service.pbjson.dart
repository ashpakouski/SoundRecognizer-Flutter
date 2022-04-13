///
//  Generated code. Do not modify.
//  source: sound_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use soundDescriptor instead')
const Sound$json = const {
  '1': 'Sound',
  '2': const [
    const {'1': 'sound_values', '3': 1, '4': 1, '5': 12, '10': 'soundValues'},
    const {'1': 'file_name', '3': 2, '4': 1, '5': 9, '10': 'fileName'},
  ],
};

/// Descriptor for `Sound`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List soundDescriptor = $convert.base64Decode('CgVTb3VuZBIhCgxzb3VuZF92YWx1ZXMYASABKAxSC3NvdW5kVmFsdWVzEhsKCWZpbGVfbmFtZRgCIAEoCVIIZmlsZU5hbWU=');
@$core.Deprecated('Use emptyResponseDescriptor instead')
const EmptyResponse$json = const {
  '1': 'EmptyResponse',
  '2': const [
    const {'1': 'received_sound_length', '3': 1, '4': 1, '5': 5, '10': 'receivedSoundLength'},
  ],
};

/// Descriptor for `EmptyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyResponseDescriptor = $convert.base64Decode('Cg1FbXB0eVJlc3BvbnNlEjIKFXJlY2VpdmVkX3NvdW5kX2xlbmd0aBgBIAEoBVITcmVjZWl2ZWRTb3VuZExlbmd0aA==');
@$core.Deprecated('Use recognitionResultDescriptor instead')
const RecognitionResult$json = const {
  '1': 'RecognitionResult',
  '2': const [
    const {'1': 'sound_source_name', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'soundSourceName'},
    const {'1': 'probability', '3': 2, '4': 1, '5': 1, '9': 0, '10': 'probability'},
  ],
  '8': const [
    const {'1': 'recognizedSource'},
  ],
};

/// Descriptor for `RecognitionResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recognitionResultDescriptor = $convert.base64Decode('ChFSZWNvZ25pdGlvblJlc3VsdBIsChFzb3VuZF9zb3VyY2VfbmFtZRgBIAEoCUgAUg9zb3VuZFNvdXJjZU5hbWUSIgoLcHJvYmFiaWxpdHkYAiABKAFIAFILcHJvYmFiaWxpdHlCEgoQcmVjb2duaXplZFNvdXJjZQ==');
