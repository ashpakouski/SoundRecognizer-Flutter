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
@$core.Deprecated('Use recognizedSoundDescriptor instead')
const RecognizedSound$json = const {
  '1': 'RecognizedSound',
  '2': const [
    const {'1': 'sound_source_name', '3': 1, '4': 1, '5': 9, '10': 'soundSourceName'},
    const {'1': 'probability', '3': 2, '4': 1, '5': 1, '10': 'probability'},
  ],
};

/// Descriptor for `RecognizedSound`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recognizedSoundDescriptor = $convert.base64Decode('Cg9SZWNvZ25pemVkU291bmQSKgoRc291bmRfc291cmNlX25hbWUYASABKAlSD3NvdW5kU291cmNlTmFtZRIgCgtwcm9iYWJpbGl0eRgCIAEoAVILcHJvYmFiaWxpdHk=');
@$core.Deprecated('Use recognizedSoundsDescriptor instead')
const RecognizedSounds$json = const {
  '1': 'RecognizedSounds',
  '2': const [
    const {'1': 'recognitionResult', '3': 1, '4': 3, '5': 11, '6': '.com.shpakovskiy.soundrecognizer.RecognizedSound', '10': 'recognitionResult'},
  ],
};

/// Descriptor for `RecognizedSounds`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recognizedSoundsDescriptor = $convert.base64Decode('ChBSZWNvZ25pemVkU291bmRzEl4KEXJlY29nbml0aW9uUmVzdWx0GAEgAygLMjAuY29tLnNocGFrb3Zza2l5LnNvdW5kcmVjb2duaXplci5SZWNvZ25pemVkU291bmRSEXJlY29nbml0aW9uUmVzdWx0');
@$core.Deprecated('Use recognitionResultDescriptor instead')
const RecognitionResult$json = const {
  '1': 'RecognitionResult',
  '2': const [
    const {'1': 'recognitionStatus', '3': 1, '4': 1, '5': 14, '6': '.com.shpakovskiy.soundrecognizer.RecognitionResult.RecognitionStatus', '10': 'recognitionStatus'},
    const {'1': 'recognized_sounds', '3': 2, '4': 1, '5': 11, '6': '.com.shpakovskiy.soundrecognizer.RecognizedSounds', '10': 'recognizedSounds'},
  ],
  '4': const [RecognitionResult_RecognitionStatus$json],
};

@$core.Deprecated('Use recognitionResultDescriptor instead')
const RecognitionResult_RecognitionStatus$json = const {
  '1': 'RecognitionStatus',
  '2': const [
    const {'1': 'SUCCESS', '2': 0},
    const {'1': 'FAILURE', '2': 1},
  ],
};

/// Descriptor for `RecognitionResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recognitionResultDescriptor = $convert.base64Decode('ChFSZWNvZ25pdGlvblJlc3VsdBJyChFyZWNvZ25pdGlvblN0YXR1cxgBIAEoDjJELmNvbS5zaHBha292c2tpeS5zb3VuZHJlY29nbml6ZXIuUmVjb2duaXRpb25SZXN1bHQuUmVjb2duaXRpb25TdGF0dXNSEXJlY29nbml0aW9uU3RhdHVzEl4KEXJlY29nbml6ZWRfc291bmRzGAIgASgLMjEuY29tLnNocGFrb3Zza2l5LnNvdW5kcmVjb2duaXplci5SZWNvZ25pemVkU291bmRzUhByZWNvZ25pemVkU291bmRzIi0KEVJlY29nbml0aW9uU3RhdHVzEgsKB1NVQ0NFU1MQABILCgdGQUlMVVJFEAE=');
