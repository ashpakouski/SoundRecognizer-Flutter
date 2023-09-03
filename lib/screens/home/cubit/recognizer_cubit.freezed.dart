// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recognizer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecognizerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppMode mode) initial,
    required TResult Function() recordingInProgress,
    required TResult Function() recognitionInProgress,
    required TResult Function(String objectName) recognitionSucceeded,
    required TResult Function() recognitionFailed,
    required TResult Function(List<int> soundValues) recordingCompleted,
    required TResult Function() recordingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppMode mode)? initial,
    TResult? Function()? recordingInProgress,
    TResult? Function()? recognitionInProgress,
    TResult? Function(String objectName)? recognitionSucceeded,
    TResult? Function()? recognitionFailed,
    TResult? Function(List<int> soundValues)? recordingCompleted,
    TResult? Function()? recordingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppMode mode)? initial,
    TResult Function()? recordingInProgress,
    TResult Function()? recognitionInProgress,
    TResult Function(String objectName)? recognitionSucceeded,
    TResult Function()? recognitionFailed,
    TResult Function(List<int> soundValues)? recordingCompleted,
    TResult Function()? recordingFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_RecordingInProgressState value)
        recordingInProgress,
    required TResult Function(_RecognitionInProgressState value)
        recognitionInProgress,
    required TResult Function(_RecognitionSucceededState value)
        recognitionSucceeded,
    required TResult Function(_RecognitionFailedState value) recognitionFailed,
    required TResult Function(_RecordingCompletedState value)
        recordingCompleted,
    required TResult Function(_RecordingFailedState value) recordingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_RecordingInProgressState value)? recordingInProgress,
    TResult? Function(_RecognitionInProgressState value)? recognitionInProgress,
    TResult? Function(_RecognitionSucceededState value)? recognitionSucceeded,
    TResult? Function(_RecognitionFailedState value)? recognitionFailed,
    TResult? Function(_RecordingCompletedState value)? recordingCompleted,
    TResult? Function(_RecordingFailedState value)? recordingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_RecordingInProgressState value)? recordingInProgress,
    TResult Function(_RecognitionInProgressState value)? recognitionInProgress,
    TResult Function(_RecognitionSucceededState value)? recognitionSucceeded,
    TResult Function(_RecognitionFailedState value)? recognitionFailed,
    TResult Function(_RecordingCompletedState value)? recordingCompleted,
    TResult Function(_RecordingFailedState value)? recordingFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecognizerStateCopyWith<$Res> {
  factory $RecognizerStateCopyWith(
          RecognizerState value, $Res Function(RecognizerState) then) =
      _$RecognizerStateCopyWithImpl<$Res, RecognizerState>;
}

/// @nodoc
class _$RecognizerStateCopyWithImpl<$Res, $Val extends RecognizerState>
    implements $RecognizerStateCopyWith<$Res> {
  _$RecognizerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialStateCopyWith<$Res> {
  factory _$$_InitialStateCopyWith(
          _$_InitialState value, $Res Function(_$_InitialState) then) =
      __$$_InitialStateCopyWithImpl<$Res>;
  @useResult
  $Res call({AppMode mode});
}

/// @nodoc
class __$$_InitialStateCopyWithImpl<$Res>
    extends _$RecognizerStateCopyWithImpl<$Res, _$_InitialState>
    implements _$$_InitialStateCopyWith<$Res> {
  __$$_InitialStateCopyWithImpl(
      _$_InitialState _value, $Res Function(_$_InitialState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
  }) {
    return _then(_$_InitialState(
      null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as AppMode,
    ));
  }
}

/// @nodoc

class _$_InitialState implements _InitialState {
  const _$_InitialState(this.mode);

  @override
  final AppMode mode;

  @override
  String toString() {
    return 'RecognizerState.initial(mode: $mode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialState &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialStateCopyWith<_$_InitialState> get copyWith =>
      __$$_InitialStateCopyWithImpl<_$_InitialState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppMode mode) initial,
    required TResult Function() recordingInProgress,
    required TResult Function() recognitionInProgress,
    required TResult Function(String objectName) recognitionSucceeded,
    required TResult Function() recognitionFailed,
    required TResult Function(List<int> soundValues) recordingCompleted,
    required TResult Function() recordingFailed,
  }) {
    return initial(mode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppMode mode)? initial,
    TResult? Function()? recordingInProgress,
    TResult? Function()? recognitionInProgress,
    TResult? Function(String objectName)? recognitionSucceeded,
    TResult? Function()? recognitionFailed,
    TResult? Function(List<int> soundValues)? recordingCompleted,
    TResult? Function()? recordingFailed,
  }) {
    return initial?.call(mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppMode mode)? initial,
    TResult Function()? recordingInProgress,
    TResult Function()? recognitionInProgress,
    TResult Function(String objectName)? recognitionSucceeded,
    TResult Function()? recognitionFailed,
    TResult Function(List<int> soundValues)? recordingCompleted,
    TResult Function()? recordingFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_RecordingInProgressState value)
        recordingInProgress,
    required TResult Function(_RecognitionInProgressState value)
        recognitionInProgress,
    required TResult Function(_RecognitionSucceededState value)
        recognitionSucceeded,
    required TResult Function(_RecognitionFailedState value) recognitionFailed,
    required TResult Function(_RecordingCompletedState value)
        recordingCompleted,
    required TResult Function(_RecordingFailedState value) recordingFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_RecordingInProgressState value)? recordingInProgress,
    TResult? Function(_RecognitionInProgressState value)? recognitionInProgress,
    TResult? Function(_RecognitionSucceededState value)? recognitionSucceeded,
    TResult? Function(_RecognitionFailedState value)? recognitionFailed,
    TResult? Function(_RecordingCompletedState value)? recordingCompleted,
    TResult? Function(_RecordingFailedState value)? recordingFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_RecordingInProgressState value)? recordingInProgress,
    TResult Function(_RecognitionInProgressState value)? recognitionInProgress,
    TResult Function(_RecognitionSucceededState value)? recognitionSucceeded,
    TResult Function(_RecognitionFailedState value)? recognitionFailed,
    TResult Function(_RecordingCompletedState value)? recordingCompleted,
    TResult Function(_RecordingFailedState value)? recordingFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements RecognizerState {
  const factory _InitialState(final AppMode mode) = _$_InitialState;

  AppMode get mode;
  @JsonKey(ignore: true)
  _$$_InitialStateCopyWith<_$_InitialState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RecordingInProgressStateCopyWith<$Res> {
  factory _$$_RecordingInProgressStateCopyWith(
          _$_RecordingInProgressState value,
          $Res Function(_$_RecordingInProgressState) then) =
      __$$_RecordingInProgressStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RecordingInProgressStateCopyWithImpl<$Res>
    extends _$RecognizerStateCopyWithImpl<$Res, _$_RecordingInProgressState>
    implements _$$_RecordingInProgressStateCopyWith<$Res> {
  __$$_RecordingInProgressStateCopyWithImpl(_$_RecordingInProgressState _value,
      $Res Function(_$_RecordingInProgressState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RecordingInProgressState implements _RecordingInProgressState {
  const _$_RecordingInProgressState();

  @override
  String toString() {
    return 'RecognizerState.recordingInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecordingInProgressState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppMode mode) initial,
    required TResult Function() recordingInProgress,
    required TResult Function() recognitionInProgress,
    required TResult Function(String objectName) recognitionSucceeded,
    required TResult Function() recognitionFailed,
    required TResult Function(List<int> soundValues) recordingCompleted,
    required TResult Function() recordingFailed,
  }) {
    return recordingInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppMode mode)? initial,
    TResult? Function()? recordingInProgress,
    TResult? Function()? recognitionInProgress,
    TResult? Function(String objectName)? recognitionSucceeded,
    TResult? Function()? recognitionFailed,
    TResult? Function(List<int> soundValues)? recordingCompleted,
    TResult? Function()? recordingFailed,
  }) {
    return recordingInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppMode mode)? initial,
    TResult Function()? recordingInProgress,
    TResult Function()? recognitionInProgress,
    TResult Function(String objectName)? recognitionSucceeded,
    TResult Function()? recognitionFailed,
    TResult Function(List<int> soundValues)? recordingCompleted,
    TResult Function()? recordingFailed,
    required TResult orElse(),
  }) {
    if (recordingInProgress != null) {
      return recordingInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_RecordingInProgressState value)
        recordingInProgress,
    required TResult Function(_RecognitionInProgressState value)
        recognitionInProgress,
    required TResult Function(_RecognitionSucceededState value)
        recognitionSucceeded,
    required TResult Function(_RecognitionFailedState value) recognitionFailed,
    required TResult Function(_RecordingCompletedState value)
        recordingCompleted,
    required TResult Function(_RecordingFailedState value) recordingFailed,
  }) {
    return recordingInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_RecordingInProgressState value)? recordingInProgress,
    TResult? Function(_RecognitionInProgressState value)? recognitionInProgress,
    TResult? Function(_RecognitionSucceededState value)? recognitionSucceeded,
    TResult? Function(_RecognitionFailedState value)? recognitionFailed,
    TResult? Function(_RecordingCompletedState value)? recordingCompleted,
    TResult? Function(_RecordingFailedState value)? recordingFailed,
  }) {
    return recordingInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_RecordingInProgressState value)? recordingInProgress,
    TResult Function(_RecognitionInProgressState value)? recognitionInProgress,
    TResult Function(_RecognitionSucceededState value)? recognitionSucceeded,
    TResult Function(_RecognitionFailedState value)? recognitionFailed,
    TResult Function(_RecordingCompletedState value)? recordingCompleted,
    TResult Function(_RecordingFailedState value)? recordingFailed,
    required TResult orElse(),
  }) {
    if (recordingInProgress != null) {
      return recordingInProgress(this);
    }
    return orElse();
  }
}

abstract class _RecordingInProgressState implements RecognizerState {
  const factory _RecordingInProgressState() = _$_RecordingInProgressState;
}

/// @nodoc
abstract class _$$_RecognitionInProgressStateCopyWith<$Res> {
  factory _$$_RecognitionInProgressStateCopyWith(
          _$_RecognitionInProgressState value,
          $Res Function(_$_RecognitionInProgressState) then) =
      __$$_RecognitionInProgressStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RecognitionInProgressStateCopyWithImpl<$Res>
    extends _$RecognizerStateCopyWithImpl<$Res, _$_RecognitionInProgressState>
    implements _$$_RecognitionInProgressStateCopyWith<$Res> {
  __$$_RecognitionInProgressStateCopyWithImpl(
      _$_RecognitionInProgressState _value,
      $Res Function(_$_RecognitionInProgressState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RecognitionInProgressState implements _RecognitionInProgressState {
  const _$_RecognitionInProgressState();

  @override
  String toString() {
    return 'RecognizerState.recognitionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecognitionInProgressState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppMode mode) initial,
    required TResult Function() recordingInProgress,
    required TResult Function() recognitionInProgress,
    required TResult Function(String objectName) recognitionSucceeded,
    required TResult Function() recognitionFailed,
    required TResult Function(List<int> soundValues) recordingCompleted,
    required TResult Function() recordingFailed,
  }) {
    return recognitionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppMode mode)? initial,
    TResult? Function()? recordingInProgress,
    TResult? Function()? recognitionInProgress,
    TResult? Function(String objectName)? recognitionSucceeded,
    TResult? Function()? recognitionFailed,
    TResult? Function(List<int> soundValues)? recordingCompleted,
    TResult? Function()? recordingFailed,
  }) {
    return recognitionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppMode mode)? initial,
    TResult Function()? recordingInProgress,
    TResult Function()? recognitionInProgress,
    TResult Function(String objectName)? recognitionSucceeded,
    TResult Function()? recognitionFailed,
    TResult Function(List<int> soundValues)? recordingCompleted,
    TResult Function()? recordingFailed,
    required TResult orElse(),
  }) {
    if (recognitionInProgress != null) {
      return recognitionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_RecordingInProgressState value)
        recordingInProgress,
    required TResult Function(_RecognitionInProgressState value)
        recognitionInProgress,
    required TResult Function(_RecognitionSucceededState value)
        recognitionSucceeded,
    required TResult Function(_RecognitionFailedState value) recognitionFailed,
    required TResult Function(_RecordingCompletedState value)
        recordingCompleted,
    required TResult Function(_RecordingFailedState value) recordingFailed,
  }) {
    return recognitionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_RecordingInProgressState value)? recordingInProgress,
    TResult? Function(_RecognitionInProgressState value)? recognitionInProgress,
    TResult? Function(_RecognitionSucceededState value)? recognitionSucceeded,
    TResult? Function(_RecognitionFailedState value)? recognitionFailed,
    TResult? Function(_RecordingCompletedState value)? recordingCompleted,
    TResult? Function(_RecordingFailedState value)? recordingFailed,
  }) {
    return recognitionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_RecordingInProgressState value)? recordingInProgress,
    TResult Function(_RecognitionInProgressState value)? recognitionInProgress,
    TResult Function(_RecognitionSucceededState value)? recognitionSucceeded,
    TResult Function(_RecognitionFailedState value)? recognitionFailed,
    TResult Function(_RecordingCompletedState value)? recordingCompleted,
    TResult Function(_RecordingFailedState value)? recordingFailed,
    required TResult orElse(),
  }) {
    if (recognitionInProgress != null) {
      return recognitionInProgress(this);
    }
    return orElse();
  }
}

abstract class _RecognitionInProgressState implements RecognizerState {
  const factory _RecognitionInProgressState() = _$_RecognitionInProgressState;
}

/// @nodoc
abstract class _$$_RecognitionSucceededStateCopyWith<$Res> {
  factory _$$_RecognitionSucceededStateCopyWith(
          _$_RecognitionSucceededState value,
          $Res Function(_$_RecognitionSucceededState) then) =
      __$$_RecognitionSucceededStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String objectName});
}

/// @nodoc
class __$$_RecognitionSucceededStateCopyWithImpl<$Res>
    extends _$RecognizerStateCopyWithImpl<$Res, _$_RecognitionSucceededState>
    implements _$$_RecognitionSucceededStateCopyWith<$Res> {
  __$$_RecognitionSucceededStateCopyWithImpl(
      _$_RecognitionSucceededState _value,
      $Res Function(_$_RecognitionSucceededState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectName = null,
  }) {
    return _then(_$_RecognitionSucceededState(
      null == objectName
          ? _value.objectName
          : objectName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RecognitionSucceededState implements _RecognitionSucceededState {
  const _$_RecognitionSucceededState(this.objectName);

  @override
  final String objectName;

  @override
  String toString() {
    return 'RecognizerState.recognitionSucceeded(objectName: $objectName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecognitionSucceededState &&
            (identical(other.objectName, objectName) ||
                other.objectName == objectName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, objectName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecognitionSucceededStateCopyWith<_$_RecognitionSucceededState>
      get copyWith => __$$_RecognitionSucceededStateCopyWithImpl<
          _$_RecognitionSucceededState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppMode mode) initial,
    required TResult Function() recordingInProgress,
    required TResult Function() recognitionInProgress,
    required TResult Function(String objectName) recognitionSucceeded,
    required TResult Function() recognitionFailed,
    required TResult Function(List<int> soundValues) recordingCompleted,
    required TResult Function() recordingFailed,
  }) {
    return recognitionSucceeded(objectName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppMode mode)? initial,
    TResult? Function()? recordingInProgress,
    TResult? Function()? recognitionInProgress,
    TResult? Function(String objectName)? recognitionSucceeded,
    TResult? Function()? recognitionFailed,
    TResult? Function(List<int> soundValues)? recordingCompleted,
    TResult? Function()? recordingFailed,
  }) {
    return recognitionSucceeded?.call(objectName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppMode mode)? initial,
    TResult Function()? recordingInProgress,
    TResult Function()? recognitionInProgress,
    TResult Function(String objectName)? recognitionSucceeded,
    TResult Function()? recognitionFailed,
    TResult Function(List<int> soundValues)? recordingCompleted,
    TResult Function()? recordingFailed,
    required TResult orElse(),
  }) {
    if (recognitionSucceeded != null) {
      return recognitionSucceeded(objectName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_RecordingInProgressState value)
        recordingInProgress,
    required TResult Function(_RecognitionInProgressState value)
        recognitionInProgress,
    required TResult Function(_RecognitionSucceededState value)
        recognitionSucceeded,
    required TResult Function(_RecognitionFailedState value) recognitionFailed,
    required TResult Function(_RecordingCompletedState value)
        recordingCompleted,
    required TResult Function(_RecordingFailedState value) recordingFailed,
  }) {
    return recognitionSucceeded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_RecordingInProgressState value)? recordingInProgress,
    TResult? Function(_RecognitionInProgressState value)? recognitionInProgress,
    TResult? Function(_RecognitionSucceededState value)? recognitionSucceeded,
    TResult? Function(_RecognitionFailedState value)? recognitionFailed,
    TResult? Function(_RecordingCompletedState value)? recordingCompleted,
    TResult? Function(_RecordingFailedState value)? recordingFailed,
  }) {
    return recognitionSucceeded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_RecordingInProgressState value)? recordingInProgress,
    TResult Function(_RecognitionInProgressState value)? recognitionInProgress,
    TResult Function(_RecognitionSucceededState value)? recognitionSucceeded,
    TResult Function(_RecognitionFailedState value)? recognitionFailed,
    TResult Function(_RecordingCompletedState value)? recordingCompleted,
    TResult Function(_RecordingFailedState value)? recordingFailed,
    required TResult orElse(),
  }) {
    if (recognitionSucceeded != null) {
      return recognitionSucceeded(this);
    }
    return orElse();
  }
}

abstract class _RecognitionSucceededState implements RecognizerState {
  const factory _RecognitionSucceededState(final String objectName) =
      _$_RecognitionSucceededState;

  String get objectName;
  @JsonKey(ignore: true)
  _$$_RecognitionSucceededStateCopyWith<_$_RecognitionSucceededState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RecognitionFailedStateCopyWith<$Res> {
  factory _$$_RecognitionFailedStateCopyWith(_$_RecognitionFailedState value,
          $Res Function(_$_RecognitionFailedState) then) =
      __$$_RecognitionFailedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RecognitionFailedStateCopyWithImpl<$Res>
    extends _$RecognizerStateCopyWithImpl<$Res, _$_RecognitionFailedState>
    implements _$$_RecognitionFailedStateCopyWith<$Res> {
  __$$_RecognitionFailedStateCopyWithImpl(_$_RecognitionFailedState _value,
      $Res Function(_$_RecognitionFailedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RecognitionFailedState implements _RecognitionFailedState {
  const _$_RecognitionFailedState();

  @override
  String toString() {
    return 'RecognizerState.recognitionFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecognitionFailedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppMode mode) initial,
    required TResult Function() recordingInProgress,
    required TResult Function() recognitionInProgress,
    required TResult Function(String objectName) recognitionSucceeded,
    required TResult Function() recognitionFailed,
    required TResult Function(List<int> soundValues) recordingCompleted,
    required TResult Function() recordingFailed,
  }) {
    return recognitionFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppMode mode)? initial,
    TResult? Function()? recordingInProgress,
    TResult? Function()? recognitionInProgress,
    TResult? Function(String objectName)? recognitionSucceeded,
    TResult? Function()? recognitionFailed,
    TResult? Function(List<int> soundValues)? recordingCompleted,
    TResult? Function()? recordingFailed,
  }) {
    return recognitionFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppMode mode)? initial,
    TResult Function()? recordingInProgress,
    TResult Function()? recognitionInProgress,
    TResult Function(String objectName)? recognitionSucceeded,
    TResult Function()? recognitionFailed,
    TResult Function(List<int> soundValues)? recordingCompleted,
    TResult Function()? recordingFailed,
    required TResult orElse(),
  }) {
    if (recognitionFailed != null) {
      return recognitionFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_RecordingInProgressState value)
        recordingInProgress,
    required TResult Function(_RecognitionInProgressState value)
        recognitionInProgress,
    required TResult Function(_RecognitionSucceededState value)
        recognitionSucceeded,
    required TResult Function(_RecognitionFailedState value) recognitionFailed,
    required TResult Function(_RecordingCompletedState value)
        recordingCompleted,
    required TResult Function(_RecordingFailedState value) recordingFailed,
  }) {
    return recognitionFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_RecordingInProgressState value)? recordingInProgress,
    TResult? Function(_RecognitionInProgressState value)? recognitionInProgress,
    TResult? Function(_RecognitionSucceededState value)? recognitionSucceeded,
    TResult? Function(_RecognitionFailedState value)? recognitionFailed,
    TResult? Function(_RecordingCompletedState value)? recordingCompleted,
    TResult? Function(_RecordingFailedState value)? recordingFailed,
  }) {
    return recognitionFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_RecordingInProgressState value)? recordingInProgress,
    TResult Function(_RecognitionInProgressState value)? recognitionInProgress,
    TResult Function(_RecognitionSucceededState value)? recognitionSucceeded,
    TResult Function(_RecognitionFailedState value)? recognitionFailed,
    TResult Function(_RecordingCompletedState value)? recordingCompleted,
    TResult Function(_RecordingFailedState value)? recordingFailed,
    required TResult orElse(),
  }) {
    if (recognitionFailed != null) {
      return recognitionFailed(this);
    }
    return orElse();
  }
}

abstract class _RecognitionFailedState implements RecognizerState {
  const factory _RecognitionFailedState() = _$_RecognitionFailedState;
}

/// @nodoc
abstract class _$$_RecordingCompletedStateCopyWith<$Res> {
  factory _$$_RecordingCompletedStateCopyWith(_$_RecordingCompletedState value,
          $Res Function(_$_RecordingCompletedState) then) =
      __$$_RecordingCompletedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> soundValues});
}

/// @nodoc
class __$$_RecordingCompletedStateCopyWithImpl<$Res>
    extends _$RecognizerStateCopyWithImpl<$Res, _$_RecordingCompletedState>
    implements _$$_RecordingCompletedStateCopyWith<$Res> {
  __$$_RecordingCompletedStateCopyWithImpl(_$_RecordingCompletedState _value,
      $Res Function(_$_RecordingCompletedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? soundValues = null,
  }) {
    return _then(_$_RecordingCompletedState(
      null == soundValues
          ? _value._soundValues
          : soundValues // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_RecordingCompletedState implements _RecordingCompletedState {
  const _$_RecordingCompletedState(final List<int> soundValues)
      : _soundValues = soundValues;

  final List<int> _soundValues;
  @override
  List<int> get soundValues {
    if (_soundValues is EqualUnmodifiableListView) return _soundValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_soundValues);
  }

  @override
  String toString() {
    return 'RecognizerState.recordingCompleted(soundValues: $soundValues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecordingCompletedState &&
            const DeepCollectionEquality()
                .equals(other._soundValues, _soundValues));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_soundValues));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecordingCompletedStateCopyWith<_$_RecordingCompletedState>
      get copyWith =>
          __$$_RecordingCompletedStateCopyWithImpl<_$_RecordingCompletedState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppMode mode) initial,
    required TResult Function() recordingInProgress,
    required TResult Function() recognitionInProgress,
    required TResult Function(String objectName) recognitionSucceeded,
    required TResult Function() recognitionFailed,
    required TResult Function(List<int> soundValues) recordingCompleted,
    required TResult Function() recordingFailed,
  }) {
    return recordingCompleted(soundValues);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppMode mode)? initial,
    TResult? Function()? recordingInProgress,
    TResult? Function()? recognitionInProgress,
    TResult? Function(String objectName)? recognitionSucceeded,
    TResult? Function()? recognitionFailed,
    TResult? Function(List<int> soundValues)? recordingCompleted,
    TResult? Function()? recordingFailed,
  }) {
    return recordingCompleted?.call(soundValues);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppMode mode)? initial,
    TResult Function()? recordingInProgress,
    TResult Function()? recognitionInProgress,
    TResult Function(String objectName)? recognitionSucceeded,
    TResult Function()? recognitionFailed,
    TResult Function(List<int> soundValues)? recordingCompleted,
    TResult Function()? recordingFailed,
    required TResult orElse(),
  }) {
    if (recordingCompleted != null) {
      return recordingCompleted(soundValues);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_RecordingInProgressState value)
        recordingInProgress,
    required TResult Function(_RecognitionInProgressState value)
        recognitionInProgress,
    required TResult Function(_RecognitionSucceededState value)
        recognitionSucceeded,
    required TResult Function(_RecognitionFailedState value) recognitionFailed,
    required TResult Function(_RecordingCompletedState value)
        recordingCompleted,
    required TResult Function(_RecordingFailedState value) recordingFailed,
  }) {
    return recordingCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_RecordingInProgressState value)? recordingInProgress,
    TResult? Function(_RecognitionInProgressState value)? recognitionInProgress,
    TResult? Function(_RecognitionSucceededState value)? recognitionSucceeded,
    TResult? Function(_RecognitionFailedState value)? recognitionFailed,
    TResult? Function(_RecordingCompletedState value)? recordingCompleted,
    TResult? Function(_RecordingFailedState value)? recordingFailed,
  }) {
    return recordingCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_RecordingInProgressState value)? recordingInProgress,
    TResult Function(_RecognitionInProgressState value)? recognitionInProgress,
    TResult Function(_RecognitionSucceededState value)? recognitionSucceeded,
    TResult Function(_RecognitionFailedState value)? recognitionFailed,
    TResult Function(_RecordingCompletedState value)? recordingCompleted,
    TResult Function(_RecordingFailedState value)? recordingFailed,
    required TResult orElse(),
  }) {
    if (recordingCompleted != null) {
      return recordingCompleted(this);
    }
    return orElse();
  }
}

abstract class _RecordingCompletedState implements RecognizerState {
  const factory _RecordingCompletedState(final List<int> soundValues) =
      _$_RecordingCompletedState;

  List<int> get soundValues;
  @JsonKey(ignore: true)
  _$$_RecordingCompletedStateCopyWith<_$_RecordingCompletedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RecordingFailedStateCopyWith<$Res> {
  factory _$$_RecordingFailedStateCopyWith(_$_RecordingFailedState value,
          $Res Function(_$_RecordingFailedState) then) =
      __$$_RecordingFailedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RecordingFailedStateCopyWithImpl<$Res>
    extends _$RecognizerStateCopyWithImpl<$Res, _$_RecordingFailedState>
    implements _$$_RecordingFailedStateCopyWith<$Res> {
  __$$_RecordingFailedStateCopyWithImpl(_$_RecordingFailedState _value,
      $Res Function(_$_RecordingFailedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RecordingFailedState implements _RecordingFailedState {
  const _$_RecordingFailedState();

  @override
  String toString() {
    return 'RecognizerState.recordingFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RecordingFailedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppMode mode) initial,
    required TResult Function() recordingInProgress,
    required TResult Function() recognitionInProgress,
    required TResult Function(String objectName) recognitionSucceeded,
    required TResult Function() recognitionFailed,
    required TResult Function(List<int> soundValues) recordingCompleted,
    required TResult Function() recordingFailed,
  }) {
    return recordingFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppMode mode)? initial,
    TResult? Function()? recordingInProgress,
    TResult? Function()? recognitionInProgress,
    TResult? Function(String objectName)? recognitionSucceeded,
    TResult? Function()? recognitionFailed,
    TResult? Function(List<int> soundValues)? recordingCompleted,
    TResult? Function()? recordingFailed,
  }) {
    return recordingFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppMode mode)? initial,
    TResult Function()? recordingInProgress,
    TResult Function()? recognitionInProgress,
    TResult Function(String objectName)? recognitionSucceeded,
    TResult Function()? recognitionFailed,
    TResult Function(List<int> soundValues)? recordingCompleted,
    TResult Function()? recordingFailed,
    required TResult orElse(),
  }) {
    if (recordingFailed != null) {
      return recordingFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_RecordingInProgressState value)
        recordingInProgress,
    required TResult Function(_RecognitionInProgressState value)
        recognitionInProgress,
    required TResult Function(_RecognitionSucceededState value)
        recognitionSucceeded,
    required TResult Function(_RecognitionFailedState value) recognitionFailed,
    required TResult Function(_RecordingCompletedState value)
        recordingCompleted,
    required TResult Function(_RecordingFailedState value) recordingFailed,
  }) {
    return recordingFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_RecordingInProgressState value)? recordingInProgress,
    TResult? Function(_RecognitionInProgressState value)? recognitionInProgress,
    TResult? Function(_RecognitionSucceededState value)? recognitionSucceeded,
    TResult? Function(_RecognitionFailedState value)? recognitionFailed,
    TResult? Function(_RecordingCompletedState value)? recordingCompleted,
    TResult? Function(_RecordingFailedState value)? recordingFailed,
  }) {
    return recordingFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_RecordingInProgressState value)? recordingInProgress,
    TResult Function(_RecognitionInProgressState value)? recognitionInProgress,
    TResult Function(_RecognitionSucceededState value)? recognitionSucceeded,
    TResult Function(_RecognitionFailedState value)? recognitionFailed,
    TResult Function(_RecordingCompletedState value)? recordingCompleted,
    TResult Function(_RecordingFailedState value)? recordingFailed,
    required TResult orElse(),
  }) {
    if (recordingFailed != null) {
      return recordingFailed(this);
    }
    return orElse();
  }
}

abstract class _RecordingFailedState implements RecognizerState {
  const factory _RecordingFailedState() = _$_RecordingFailedState;
}
