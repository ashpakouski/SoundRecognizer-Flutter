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
    required TResult Function() recordingStarted,
    required TResult Function() recognitionStarted,
    required TResult Function(String objectName) recognitionSucceeded,
    required TResult Function() recognitionFailed,
    required TResult Function() recordingCompleted,
    required TResult Function() recordingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppMode mode)? initial,
    TResult? Function()? recordingStarted,
    TResult? Function()? recognitionStarted,
    TResult? Function(String objectName)? recognitionSucceeded,
    TResult? Function()? recognitionFailed,
    TResult? Function()? recordingCompleted,
    TResult? Function()? recordingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppMode mode)? initial,
    TResult Function()? recordingStarted,
    TResult Function()? recognitionStarted,
    TResult Function(String objectName)? recognitionSucceeded,
    TResult Function()? recognitionFailed,
    TResult Function()? recordingCompleted,
    TResult Function()? recordingFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(RecordingStartedState value) recordingStarted,
    required TResult Function(RecognitionStartedState value) recognitionStarted,
    required TResult Function(RecognitionSucceededState value)
        recognitionSucceeded,
    required TResult Function(RecognitionFailedState value) recognitionFailed,
    required TResult Function(RecordingCompletedState value) recordingCompleted,
    required TResult Function(RecordingFailedState value) recordingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(RecordingStartedState value)? recordingStarted,
    TResult? Function(RecognitionStartedState value)? recognitionStarted,
    TResult? Function(RecognitionSucceededState value)? recognitionSucceeded,
    TResult? Function(RecognitionFailedState value)? recognitionFailed,
    TResult? Function(RecordingCompletedState value)? recordingCompleted,
    TResult? Function(RecordingFailedState value)? recordingFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(RecordingStartedState value)? recordingStarted,
    TResult Function(RecognitionStartedState value)? recognitionStarted,
    TResult Function(RecognitionSucceededState value)? recognitionSucceeded,
    TResult Function(RecognitionFailedState value)? recognitionFailed,
    TResult Function(RecordingCompletedState value)? recordingCompleted,
    TResult Function(RecordingFailedState value)? recordingFailed,
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
abstract class _$$InitialStateCopyWith<$Res> {
  factory _$$InitialStateCopyWith(
          _$InitialState value, $Res Function(_$InitialState) then) =
      __$$InitialStateCopyWithImpl<$Res>;
  @useResult
  $Res call({AppMode mode});
}

/// @nodoc
class __$$InitialStateCopyWithImpl<$Res>
    extends _$RecognizerStateCopyWithImpl<$Res, _$InitialState>
    implements _$$InitialStateCopyWith<$Res> {
  __$$InitialStateCopyWithImpl(
      _$InitialState _value, $Res Function(_$InitialState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
  }) {
    return _then(_$InitialState(
      null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as AppMode,
    ));
  }
}

/// @nodoc

class _$InitialState implements InitialState {
  const _$InitialState(this.mode);

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
            other is _$InitialState &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialStateCopyWith<_$InitialState> get copyWith =>
      __$$InitialStateCopyWithImpl<_$InitialState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppMode mode) initial,
    required TResult Function() recordingStarted,
    required TResult Function() recognitionStarted,
    required TResult Function(String objectName) recognitionSucceeded,
    required TResult Function() recognitionFailed,
    required TResult Function() recordingCompleted,
    required TResult Function() recordingFailed,
  }) {
    return initial(mode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppMode mode)? initial,
    TResult? Function()? recordingStarted,
    TResult? Function()? recognitionStarted,
    TResult? Function(String objectName)? recognitionSucceeded,
    TResult? Function()? recognitionFailed,
    TResult? Function()? recordingCompleted,
    TResult? Function()? recordingFailed,
  }) {
    return initial?.call(mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppMode mode)? initial,
    TResult Function()? recordingStarted,
    TResult Function()? recognitionStarted,
    TResult Function(String objectName)? recognitionSucceeded,
    TResult Function()? recognitionFailed,
    TResult Function()? recordingCompleted,
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
    required TResult Function(InitialState value) initial,
    required TResult Function(RecordingStartedState value) recordingStarted,
    required TResult Function(RecognitionStartedState value) recognitionStarted,
    required TResult Function(RecognitionSucceededState value)
        recognitionSucceeded,
    required TResult Function(RecognitionFailedState value) recognitionFailed,
    required TResult Function(RecordingCompletedState value) recordingCompleted,
    required TResult Function(RecordingFailedState value) recordingFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(RecordingStartedState value)? recordingStarted,
    TResult? Function(RecognitionStartedState value)? recognitionStarted,
    TResult? Function(RecognitionSucceededState value)? recognitionSucceeded,
    TResult? Function(RecognitionFailedState value)? recognitionFailed,
    TResult? Function(RecordingCompletedState value)? recordingCompleted,
    TResult? Function(RecordingFailedState value)? recordingFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(RecordingStartedState value)? recordingStarted,
    TResult Function(RecognitionStartedState value)? recognitionStarted,
    TResult Function(RecognitionSucceededState value)? recognitionSucceeded,
    TResult Function(RecognitionFailedState value)? recognitionFailed,
    TResult Function(RecordingCompletedState value)? recordingCompleted,
    TResult Function(RecordingFailedState value)? recordingFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialState implements RecognizerState {
  const factory InitialState(final AppMode mode) = _$InitialState;

  AppMode get mode;
  @JsonKey(ignore: true)
  _$$InitialStateCopyWith<_$InitialState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecordingStartedStateCopyWith<$Res> {
  factory _$$RecordingStartedStateCopyWith(_$RecordingStartedState value,
          $Res Function(_$RecordingStartedState) then) =
      __$$RecordingStartedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecordingStartedStateCopyWithImpl<$Res>
    extends _$RecognizerStateCopyWithImpl<$Res, _$RecordingStartedState>
    implements _$$RecordingStartedStateCopyWith<$Res> {
  __$$RecordingStartedStateCopyWithImpl(_$RecordingStartedState _value,
      $Res Function(_$RecordingStartedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecordingStartedState implements RecordingStartedState {
  const _$RecordingStartedState();

  @override
  String toString() {
    return 'RecognizerState.recordingStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecordingStartedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppMode mode) initial,
    required TResult Function() recordingStarted,
    required TResult Function() recognitionStarted,
    required TResult Function(String objectName) recognitionSucceeded,
    required TResult Function() recognitionFailed,
    required TResult Function() recordingCompleted,
    required TResult Function() recordingFailed,
  }) {
    return recordingStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppMode mode)? initial,
    TResult? Function()? recordingStarted,
    TResult? Function()? recognitionStarted,
    TResult? Function(String objectName)? recognitionSucceeded,
    TResult? Function()? recognitionFailed,
    TResult? Function()? recordingCompleted,
    TResult? Function()? recordingFailed,
  }) {
    return recordingStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppMode mode)? initial,
    TResult Function()? recordingStarted,
    TResult Function()? recognitionStarted,
    TResult Function(String objectName)? recognitionSucceeded,
    TResult Function()? recognitionFailed,
    TResult Function()? recordingCompleted,
    TResult Function()? recordingFailed,
    required TResult orElse(),
  }) {
    if (recordingStarted != null) {
      return recordingStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(RecordingStartedState value) recordingStarted,
    required TResult Function(RecognitionStartedState value) recognitionStarted,
    required TResult Function(RecognitionSucceededState value)
        recognitionSucceeded,
    required TResult Function(RecognitionFailedState value) recognitionFailed,
    required TResult Function(RecordingCompletedState value) recordingCompleted,
    required TResult Function(RecordingFailedState value) recordingFailed,
  }) {
    return recordingStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(RecordingStartedState value)? recordingStarted,
    TResult? Function(RecognitionStartedState value)? recognitionStarted,
    TResult? Function(RecognitionSucceededState value)? recognitionSucceeded,
    TResult? Function(RecognitionFailedState value)? recognitionFailed,
    TResult? Function(RecordingCompletedState value)? recordingCompleted,
    TResult? Function(RecordingFailedState value)? recordingFailed,
  }) {
    return recordingStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(RecordingStartedState value)? recordingStarted,
    TResult Function(RecognitionStartedState value)? recognitionStarted,
    TResult Function(RecognitionSucceededState value)? recognitionSucceeded,
    TResult Function(RecognitionFailedState value)? recognitionFailed,
    TResult Function(RecordingCompletedState value)? recordingCompleted,
    TResult Function(RecordingFailedState value)? recordingFailed,
    required TResult orElse(),
  }) {
    if (recordingStarted != null) {
      return recordingStarted(this);
    }
    return orElse();
  }
}

abstract class RecordingStartedState implements RecognizerState {
  const factory RecordingStartedState() = _$RecordingStartedState;
}

/// @nodoc
abstract class _$$RecognitionStartedStateCopyWith<$Res> {
  factory _$$RecognitionStartedStateCopyWith(_$RecognitionStartedState value,
          $Res Function(_$RecognitionStartedState) then) =
      __$$RecognitionStartedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecognitionStartedStateCopyWithImpl<$Res>
    extends _$RecognizerStateCopyWithImpl<$Res, _$RecognitionStartedState>
    implements _$$RecognitionStartedStateCopyWith<$Res> {
  __$$RecognitionStartedStateCopyWithImpl(_$RecognitionStartedState _value,
      $Res Function(_$RecognitionStartedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecognitionStartedState implements RecognitionStartedState {
  const _$RecognitionStartedState();

  @override
  String toString() {
    return 'RecognizerState.recognitionStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecognitionStartedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppMode mode) initial,
    required TResult Function() recordingStarted,
    required TResult Function() recognitionStarted,
    required TResult Function(String objectName) recognitionSucceeded,
    required TResult Function() recognitionFailed,
    required TResult Function() recordingCompleted,
    required TResult Function() recordingFailed,
  }) {
    return recognitionStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppMode mode)? initial,
    TResult? Function()? recordingStarted,
    TResult? Function()? recognitionStarted,
    TResult? Function(String objectName)? recognitionSucceeded,
    TResult? Function()? recognitionFailed,
    TResult? Function()? recordingCompleted,
    TResult? Function()? recordingFailed,
  }) {
    return recognitionStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppMode mode)? initial,
    TResult Function()? recordingStarted,
    TResult Function()? recognitionStarted,
    TResult Function(String objectName)? recognitionSucceeded,
    TResult Function()? recognitionFailed,
    TResult Function()? recordingCompleted,
    TResult Function()? recordingFailed,
    required TResult orElse(),
  }) {
    if (recognitionStarted != null) {
      return recognitionStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(RecordingStartedState value) recordingStarted,
    required TResult Function(RecognitionStartedState value) recognitionStarted,
    required TResult Function(RecognitionSucceededState value)
        recognitionSucceeded,
    required TResult Function(RecognitionFailedState value) recognitionFailed,
    required TResult Function(RecordingCompletedState value) recordingCompleted,
    required TResult Function(RecordingFailedState value) recordingFailed,
  }) {
    return recognitionStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(RecordingStartedState value)? recordingStarted,
    TResult? Function(RecognitionStartedState value)? recognitionStarted,
    TResult? Function(RecognitionSucceededState value)? recognitionSucceeded,
    TResult? Function(RecognitionFailedState value)? recognitionFailed,
    TResult? Function(RecordingCompletedState value)? recordingCompleted,
    TResult? Function(RecordingFailedState value)? recordingFailed,
  }) {
    return recognitionStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(RecordingStartedState value)? recordingStarted,
    TResult Function(RecognitionStartedState value)? recognitionStarted,
    TResult Function(RecognitionSucceededState value)? recognitionSucceeded,
    TResult Function(RecognitionFailedState value)? recognitionFailed,
    TResult Function(RecordingCompletedState value)? recordingCompleted,
    TResult Function(RecordingFailedState value)? recordingFailed,
    required TResult orElse(),
  }) {
    if (recognitionStarted != null) {
      return recognitionStarted(this);
    }
    return orElse();
  }
}

abstract class RecognitionStartedState implements RecognizerState {
  const factory RecognitionStartedState() = _$RecognitionStartedState;
}

/// @nodoc
abstract class _$$RecognitionSucceededStateCopyWith<$Res> {
  factory _$$RecognitionSucceededStateCopyWith(
          _$RecognitionSucceededState value,
          $Res Function(_$RecognitionSucceededState) then) =
      __$$RecognitionSucceededStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String objectName});
}

/// @nodoc
class __$$RecognitionSucceededStateCopyWithImpl<$Res>
    extends _$RecognizerStateCopyWithImpl<$Res, _$RecognitionSucceededState>
    implements _$$RecognitionSucceededStateCopyWith<$Res> {
  __$$RecognitionSucceededStateCopyWithImpl(_$RecognitionSucceededState _value,
      $Res Function(_$RecognitionSucceededState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectName = null,
  }) {
    return _then(_$RecognitionSucceededState(
      null == objectName
          ? _value.objectName
          : objectName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RecognitionSucceededState implements RecognitionSucceededState {
  const _$RecognitionSucceededState(this.objectName);

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
            other is _$RecognitionSucceededState &&
            (identical(other.objectName, objectName) ||
                other.objectName == objectName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, objectName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecognitionSucceededStateCopyWith<_$RecognitionSucceededState>
      get copyWith => __$$RecognitionSucceededStateCopyWithImpl<
          _$RecognitionSucceededState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppMode mode) initial,
    required TResult Function() recordingStarted,
    required TResult Function() recognitionStarted,
    required TResult Function(String objectName) recognitionSucceeded,
    required TResult Function() recognitionFailed,
    required TResult Function() recordingCompleted,
    required TResult Function() recordingFailed,
  }) {
    return recognitionSucceeded(objectName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppMode mode)? initial,
    TResult? Function()? recordingStarted,
    TResult? Function()? recognitionStarted,
    TResult? Function(String objectName)? recognitionSucceeded,
    TResult? Function()? recognitionFailed,
    TResult? Function()? recordingCompleted,
    TResult? Function()? recordingFailed,
  }) {
    return recognitionSucceeded?.call(objectName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppMode mode)? initial,
    TResult Function()? recordingStarted,
    TResult Function()? recognitionStarted,
    TResult Function(String objectName)? recognitionSucceeded,
    TResult Function()? recognitionFailed,
    TResult Function()? recordingCompleted,
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
    required TResult Function(InitialState value) initial,
    required TResult Function(RecordingStartedState value) recordingStarted,
    required TResult Function(RecognitionStartedState value) recognitionStarted,
    required TResult Function(RecognitionSucceededState value)
        recognitionSucceeded,
    required TResult Function(RecognitionFailedState value) recognitionFailed,
    required TResult Function(RecordingCompletedState value) recordingCompleted,
    required TResult Function(RecordingFailedState value) recordingFailed,
  }) {
    return recognitionSucceeded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(RecordingStartedState value)? recordingStarted,
    TResult? Function(RecognitionStartedState value)? recognitionStarted,
    TResult? Function(RecognitionSucceededState value)? recognitionSucceeded,
    TResult? Function(RecognitionFailedState value)? recognitionFailed,
    TResult? Function(RecordingCompletedState value)? recordingCompleted,
    TResult? Function(RecordingFailedState value)? recordingFailed,
  }) {
    return recognitionSucceeded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(RecordingStartedState value)? recordingStarted,
    TResult Function(RecognitionStartedState value)? recognitionStarted,
    TResult Function(RecognitionSucceededState value)? recognitionSucceeded,
    TResult Function(RecognitionFailedState value)? recognitionFailed,
    TResult Function(RecordingCompletedState value)? recordingCompleted,
    TResult Function(RecordingFailedState value)? recordingFailed,
    required TResult orElse(),
  }) {
    if (recognitionSucceeded != null) {
      return recognitionSucceeded(this);
    }
    return orElse();
  }
}

abstract class RecognitionSucceededState implements RecognizerState {
  const factory RecognitionSucceededState(final String objectName) =
      _$RecognitionSucceededState;

  String get objectName;
  @JsonKey(ignore: true)
  _$$RecognitionSucceededStateCopyWith<_$RecognitionSucceededState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecognitionFailedStateCopyWith<$Res> {
  factory _$$RecognitionFailedStateCopyWith(_$RecognitionFailedState value,
          $Res Function(_$RecognitionFailedState) then) =
      __$$RecognitionFailedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecognitionFailedStateCopyWithImpl<$Res>
    extends _$RecognizerStateCopyWithImpl<$Res, _$RecognitionFailedState>
    implements _$$RecognitionFailedStateCopyWith<$Res> {
  __$$RecognitionFailedStateCopyWithImpl(_$RecognitionFailedState _value,
      $Res Function(_$RecognitionFailedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecognitionFailedState implements RecognitionFailedState {
  const _$RecognitionFailedState();

  @override
  String toString() {
    return 'RecognizerState.recognitionFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecognitionFailedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppMode mode) initial,
    required TResult Function() recordingStarted,
    required TResult Function() recognitionStarted,
    required TResult Function(String objectName) recognitionSucceeded,
    required TResult Function() recognitionFailed,
    required TResult Function() recordingCompleted,
    required TResult Function() recordingFailed,
  }) {
    return recognitionFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppMode mode)? initial,
    TResult? Function()? recordingStarted,
    TResult? Function()? recognitionStarted,
    TResult? Function(String objectName)? recognitionSucceeded,
    TResult? Function()? recognitionFailed,
    TResult? Function()? recordingCompleted,
    TResult? Function()? recordingFailed,
  }) {
    return recognitionFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppMode mode)? initial,
    TResult Function()? recordingStarted,
    TResult Function()? recognitionStarted,
    TResult Function(String objectName)? recognitionSucceeded,
    TResult Function()? recognitionFailed,
    TResult Function()? recordingCompleted,
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
    required TResult Function(InitialState value) initial,
    required TResult Function(RecordingStartedState value) recordingStarted,
    required TResult Function(RecognitionStartedState value) recognitionStarted,
    required TResult Function(RecognitionSucceededState value)
        recognitionSucceeded,
    required TResult Function(RecognitionFailedState value) recognitionFailed,
    required TResult Function(RecordingCompletedState value) recordingCompleted,
    required TResult Function(RecordingFailedState value) recordingFailed,
  }) {
    return recognitionFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(RecordingStartedState value)? recordingStarted,
    TResult? Function(RecognitionStartedState value)? recognitionStarted,
    TResult? Function(RecognitionSucceededState value)? recognitionSucceeded,
    TResult? Function(RecognitionFailedState value)? recognitionFailed,
    TResult? Function(RecordingCompletedState value)? recordingCompleted,
    TResult? Function(RecordingFailedState value)? recordingFailed,
  }) {
    return recognitionFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(RecordingStartedState value)? recordingStarted,
    TResult Function(RecognitionStartedState value)? recognitionStarted,
    TResult Function(RecognitionSucceededState value)? recognitionSucceeded,
    TResult Function(RecognitionFailedState value)? recognitionFailed,
    TResult Function(RecordingCompletedState value)? recordingCompleted,
    TResult Function(RecordingFailedState value)? recordingFailed,
    required TResult orElse(),
  }) {
    if (recognitionFailed != null) {
      return recognitionFailed(this);
    }
    return orElse();
  }
}

abstract class RecognitionFailedState implements RecognizerState {
  const factory RecognitionFailedState() = _$RecognitionFailedState;
}

/// @nodoc
abstract class _$$RecordingCompletedStateCopyWith<$Res> {
  factory _$$RecordingCompletedStateCopyWith(_$RecordingCompletedState value,
          $Res Function(_$RecordingCompletedState) then) =
      __$$RecordingCompletedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecordingCompletedStateCopyWithImpl<$Res>
    extends _$RecognizerStateCopyWithImpl<$Res, _$RecordingCompletedState>
    implements _$$RecordingCompletedStateCopyWith<$Res> {
  __$$RecordingCompletedStateCopyWithImpl(_$RecordingCompletedState _value,
      $Res Function(_$RecordingCompletedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecordingCompletedState implements RecordingCompletedState {
  const _$RecordingCompletedState();

  @override
  String toString() {
    return 'RecognizerState.recordingCompleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordingCompletedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppMode mode) initial,
    required TResult Function() recordingStarted,
    required TResult Function() recognitionStarted,
    required TResult Function(String objectName) recognitionSucceeded,
    required TResult Function() recognitionFailed,
    required TResult Function() recordingCompleted,
    required TResult Function() recordingFailed,
  }) {
    return recordingCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppMode mode)? initial,
    TResult? Function()? recordingStarted,
    TResult? Function()? recognitionStarted,
    TResult? Function(String objectName)? recognitionSucceeded,
    TResult? Function()? recognitionFailed,
    TResult? Function()? recordingCompleted,
    TResult? Function()? recordingFailed,
  }) {
    return recordingCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppMode mode)? initial,
    TResult Function()? recordingStarted,
    TResult Function()? recognitionStarted,
    TResult Function(String objectName)? recognitionSucceeded,
    TResult Function()? recognitionFailed,
    TResult Function()? recordingCompleted,
    TResult Function()? recordingFailed,
    required TResult orElse(),
  }) {
    if (recordingCompleted != null) {
      return recordingCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(RecordingStartedState value) recordingStarted,
    required TResult Function(RecognitionStartedState value) recognitionStarted,
    required TResult Function(RecognitionSucceededState value)
        recognitionSucceeded,
    required TResult Function(RecognitionFailedState value) recognitionFailed,
    required TResult Function(RecordingCompletedState value) recordingCompleted,
    required TResult Function(RecordingFailedState value) recordingFailed,
  }) {
    return recordingCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(RecordingStartedState value)? recordingStarted,
    TResult? Function(RecognitionStartedState value)? recognitionStarted,
    TResult? Function(RecognitionSucceededState value)? recognitionSucceeded,
    TResult? Function(RecognitionFailedState value)? recognitionFailed,
    TResult? Function(RecordingCompletedState value)? recordingCompleted,
    TResult? Function(RecordingFailedState value)? recordingFailed,
  }) {
    return recordingCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(RecordingStartedState value)? recordingStarted,
    TResult Function(RecognitionStartedState value)? recognitionStarted,
    TResult Function(RecognitionSucceededState value)? recognitionSucceeded,
    TResult Function(RecognitionFailedState value)? recognitionFailed,
    TResult Function(RecordingCompletedState value)? recordingCompleted,
    TResult Function(RecordingFailedState value)? recordingFailed,
    required TResult orElse(),
  }) {
    if (recordingCompleted != null) {
      return recordingCompleted(this);
    }
    return orElse();
  }
}

abstract class RecordingCompletedState implements RecognizerState {
  const factory RecordingCompletedState() = _$RecordingCompletedState;
}

/// @nodoc
abstract class _$$RecordingFailedStateCopyWith<$Res> {
  factory _$$RecordingFailedStateCopyWith(_$RecordingFailedState value,
          $Res Function(_$RecordingFailedState) then) =
      __$$RecordingFailedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecordingFailedStateCopyWithImpl<$Res>
    extends _$RecognizerStateCopyWithImpl<$Res, _$RecordingFailedState>
    implements _$$RecordingFailedStateCopyWith<$Res> {
  __$$RecordingFailedStateCopyWithImpl(_$RecordingFailedState _value,
      $Res Function(_$RecordingFailedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecordingFailedState implements RecordingFailedState {
  const _$RecordingFailedState();

  @override
  String toString() {
    return 'RecognizerState.recordingFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecordingFailedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppMode mode) initial,
    required TResult Function() recordingStarted,
    required TResult Function() recognitionStarted,
    required TResult Function(String objectName) recognitionSucceeded,
    required TResult Function() recognitionFailed,
    required TResult Function() recordingCompleted,
    required TResult Function() recordingFailed,
  }) {
    return recordingFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppMode mode)? initial,
    TResult? Function()? recordingStarted,
    TResult? Function()? recognitionStarted,
    TResult? Function(String objectName)? recognitionSucceeded,
    TResult? Function()? recognitionFailed,
    TResult? Function()? recordingCompleted,
    TResult? Function()? recordingFailed,
  }) {
    return recordingFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppMode mode)? initial,
    TResult Function()? recordingStarted,
    TResult Function()? recognitionStarted,
    TResult Function(String objectName)? recognitionSucceeded,
    TResult Function()? recognitionFailed,
    TResult Function()? recordingCompleted,
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
    required TResult Function(InitialState value) initial,
    required TResult Function(RecordingStartedState value) recordingStarted,
    required TResult Function(RecognitionStartedState value) recognitionStarted,
    required TResult Function(RecognitionSucceededState value)
        recognitionSucceeded,
    required TResult Function(RecognitionFailedState value) recognitionFailed,
    required TResult Function(RecordingCompletedState value) recordingCompleted,
    required TResult Function(RecordingFailedState value) recordingFailed,
  }) {
    return recordingFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(RecordingStartedState value)? recordingStarted,
    TResult? Function(RecognitionStartedState value)? recognitionStarted,
    TResult? Function(RecognitionSucceededState value)? recognitionSucceeded,
    TResult? Function(RecognitionFailedState value)? recognitionFailed,
    TResult? Function(RecordingCompletedState value)? recordingCompleted,
    TResult? Function(RecordingFailedState value)? recordingFailed,
  }) {
    return recordingFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(RecordingStartedState value)? recordingStarted,
    TResult Function(RecognitionStartedState value)? recognitionStarted,
    TResult Function(RecognitionSucceededState value)? recognitionSucceeded,
    TResult Function(RecognitionFailedState value)? recognitionFailed,
    TResult Function(RecordingCompletedState value)? recordingCompleted,
    TResult Function(RecordingFailedState value)? recordingFailed,
    required TResult orElse(),
  }) {
    if (recordingFailed != null) {
      return recordingFailed(this);
    }
    return orElse();
  }
}

abstract class RecordingFailedState implements RecognizerState {
  const factory RecordingFailedState() = _$RecordingFailedState;
}
