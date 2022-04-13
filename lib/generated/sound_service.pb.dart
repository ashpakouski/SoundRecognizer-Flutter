///
//  Generated code. Do not modify.
//  source: sound_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Sound extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Sound', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.shpakovskiy.soundrecognizer'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'soundValues', $pb.PbFieldType.OY)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileName')
    ..hasRequiredFields = false
  ;

  Sound._() : super();
  factory Sound({
    $core.List<$core.int>? soundValues,
    $core.String? fileName,
  }) {
    final _result = create();
    if (soundValues != null) {
      _result.soundValues = soundValues;
    }
    if (fileName != null) {
      _result.fileName = fileName;
    }
    return _result;
  }
  factory Sound.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Sound.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Sound clone() => Sound()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Sound copyWith(void Function(Sound) updates) => super.copyWith((message) => updates(message as Sound)) as Sound; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Sound create() => Sound._();
  Sound createEmptyInstance() => create();
  static $pb.PbList<Sound> createRepeated() => $pb.PbList<Sound>();
  @$core.pragma('dart2js:noInline')
  static Sound getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Sound>(create);
  static Sound? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get soundValues => $_getN(0);
  @$pb.TagNumber(1)
  set soundValues($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSoundValues() => $_has(0);
  @$pb.TagNumber(1)
  void clearSoundValues() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get fileName => $_getSZ(1);
  @$pb.TagNumber(2)
  set fileName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFileName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFileName() => clearField(2);
}

class EmptyResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EmptyResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.shpakovskiy.soundrecognizer'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'receivedSoundLength', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  EmptyResponse._() : super();
  factory EmptyResponse({
    $core.int? receivedSoundLength,
  }) {
    final _result = create();
    if (receivedSoundLength != null) {
      _result.receivedSoundLength = receivedSoundLength;
    }
    return _result;
  }
  factory EmptyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmptyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmptyResponse clone() => EmptyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmptyResponse copyWith(void Function(EmptyResponse) updates) => super.copyWith((message) => updates(message as EmptyResponse)) as EmptyResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EmptyResponse create() => EmptyResponse._();
  EmptyResponse createEmptyInstance() => create();
  static $pb.PbList<EmptyResponse> createRepeated() => $pb.PbList<EmptyResponse>();
  @$core.pragma('dart2js:noInline')
  static EmptyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmptyResponse>(create);
  static EmptyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get receivedSoundLength => $_getIZ(0);
  @$pb.TagNumber(1)
  set receivedSoundLength($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasReceivedSoundLength() => $_has(0);
  @$pb.TagNumber(1)
  void clearReceivedSoundLength() => clearField(1);
}

enum RecognitionResult_RecognizedSource {
  soundSourceName, 
  probability, 
  notSet
}

class RecognitionResult extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, RecognitionResult_RecognizedSource> _RecognitionResult_RecognizedSourceByTag = {
    1 : RecognitionResult_RecognizedSource.soundSourceName,
    2 : RecognitionResult_RecognizedSource.probability,
    0 : RecognitionResult_RecognizedSource.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RecognitionResult', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.shpakovskiy.soundrecognizer'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'soundSourceName')
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'probability', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  RecognitionResult._() : super();
  factory RecognitionResult({
    $core.String? soundSourceName,
    $core.double? probability,
  }) {
    final _result = create();
    if (soundSourceName != null) {
      _result.soundSourceName = soundSourceName;
    }
    if (probability != null) {
      _result.probability = probability;
    }
    return _result;
  }
  factory RecognitionResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RecognitionResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RecognitionResult clone() => RecognitionResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RecognitionResult copyWith(void Function(RecognitionResult) updates) => super.copyWith((message) => updates(message as RecognitionResult)) as RecognitionResult; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RecognitionResult create() => RecognitionResult._();
  RecognitionResult createEmptyInstance() => create();
  static $pb.PbList<RecognitionResult> createRepeated() => $pb.PbList<RecognitionResult>();
  @$core.pragma('dart2js:noInline')
  static RecognitionResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RecognitionResult>(create);
  static RecognitionResult? _defaultInstance;

  RecognitionResult_RecognizedSource whichRecognizedSource() => _RecognitionResult_RecognizedSourceByTag[$_whichOneof(0)]!;
  void clearRecognizedSource() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get soundSourceName => $_getSZ(0);
  @$pb.TagNumber(1)
  set soundSourceName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSoundSourceName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSoundSourceName() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get probability => $_getN(1);
  @$pb.TagNumber(2)
  set probability($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProbability() => $_has(1);
  @$pb.TagNumber(2)
  void clearProbability() => clearField(2);
}

