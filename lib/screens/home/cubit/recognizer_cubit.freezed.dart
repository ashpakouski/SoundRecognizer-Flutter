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
    required TResult Function() recording,
    required TResult Function() recognition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppMode mode)? initial,
    TResult? Function()? recording,
    TResult? Function()? recognition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppMode mode)? initial,
    TResult Function()? recording,
    TResult Function()? recognition,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(RecognitionState value) recording,
    required TResult Function(RecordingState value) recognition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(RecognitionState value)? recording,
    TResult? Function(RecordingState value)? recognition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(RecognitionState value)? recording,
    TResult Function(RecordingState value)? recognition,
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
    required TResult Function() recording,
    required TResult Function() recognition,
  }) {
    return initial(mode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppMode mode)? initial,
    TResult? Function()? recording,
    TResult? Function()? recognition,
  }) {
    return initial?.call(mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppMode mode)? initial,
    TResult Function()? recording,
    TResult Function()? recognition,
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
    required TResult Function(RecognitionState value) recording,
    required TResult Function(RecordingState value) recognition,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(RecognitionState value)? recording,
    TResult? Function(RecordingState value)? recognition,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(RecognitionState value)? recording,
    TResult Function(RecordingState value)? recognition,
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
abstract class _$$RecognitionStateCopyWith<$Res> {
  factory _$$RecognitionStateCopyWith(
          _$RecognitionState value, $Res Function(_$RecognitionState) then) =
      __$$RecognitionStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecognitionStateCopyWithImpl<$Res>
    extends _$RecognizerStateCopyWithImpl<$Res, _$RecognitionState>
    implements _$$RecognitionStateCopyWith<$Res> {
  __$$RecognitionStateCopyWithImpl(
      _$RecognitionState _value, $Res Function(_$RecognitionState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecognitionState implements RecognitionState {
  const _$RecognitionState();

  @override
  String toString() {
    return 'RecognizerState.recording()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecognitionState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppMode mode) initial,
    required TResult Function() recording,
    required TResult Function() recognition,
  }) {
    return recording();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppMode mode)? initial,
    TResult? Function()? recording,
    TResult? Function()? recognition,
  }) {
    return recording?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppMode mode)? initial,
    TResult Function()? recording,
    TResult Function()? recognition,
    required TResult orElse(),
  }) {
    if (recording != null) {
      return recording();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(RecognitionState value) recording,
    required TResult Function(RecordingState value) recognition,
  }) {
    return recording(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(RecognitionState value)? recording,
    TResult? Function(RecordingState value)? recognition,
  }) {
    return recording?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(RecognitionState value)? recording,
    TResult Function(RecordingState value)? recognition,
    required TResult orElse(),
  }) {
    if (recording != null) {
      return recording(this);
    }
    return orElse();
  }
}

abstract class RecognitionState implements RecognizerState {
  const factory RecognitionState() = _$RecognitionState;
}

/// @nodoc
abstract class _$$RecordingStateCopyWith<$Res> {
  factory _$$RecordingStateCopyWith(
          _$RecordingState value, $Res Function(_$RecordingState) then) =
      __$$RecordingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecordingStateCopyWithImpl<$Res>
    extends _$RecognizerStateCopyWithImpl<$Res, _$RecordingState>
    implements _$$RecordingStateCopyWith<$Res> {
  __$$RecordingStateCopyWithImpl(
      _$RecordingState _value, $Res Function(_$RecordingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecordingState implements RecordingState {
  const _$RecordingState();

  @override
  String toString() {
    return 'RecognizerState.recognition()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecordingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppMode mode) initial,
    required TResult Function() recording,
    required TResult Function() recognition,
  }) {
    return recognition();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppMode mode)? initial,
    TResult? Function()? recording,
    TResult? Function()? recognition,
  }) {
    return recognition?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppMode mode)? initial,
    TResult Function()? recording,
    TResult Function()? recognition,
    required TResult orElse(),
  }) {
    if (recognition != null) {
      return recognition();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(RecognitionState value) recording,
    required TResult Function(RecordingState value) recognition,
  }) {
    return recognition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(RecognitionState value)? recording,
    TResult? Function(RecordingState value)? recognition,
  }) {
    return recognition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(RecognitionState value)? recording,
    TResult Function(RecordingState value)? recognition,
    required TResult orElse(),
  }) {
    if (recognition != null) {
      return recognition(this);
    }
    return orElse();
  }
}

abstract class RecordingState implements RecognizerState {
  const factory RecordingState() = _$RecordingState;
}
