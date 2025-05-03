// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'initialization_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InitializationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitEvent value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitializationEventCopyWith<$Res> {
  factory $InitializationEventCopyWith(
          InitializationEvent value, $Res Function(InitializationEvent) then) =
      _$InitializationEventCopyWithImpl<$Res, InitializationEvent>;
}

/// @nodoc
class _$InitializationEventCopyWithImpl<$Res, $Val extends InitializationEvent>
    implements $InitializationEventCopyWith<$Res> {
  _$InitializationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InitializationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitEventImplCopyWith<$Res> {
  factory _$$InitEventImplCopyWith(
          _$InitEventImpl value, $Res Function(_$InitEventImpl) then) =
      __$$InitEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitEventImplCopyWithImpl<$Res>
    extends _$InitializationEventCopyWithImpl<$Res, _$InitEventImpl>
    implements _$$InitEventImplCopyWith<$Res> {
  __$$InitEventImplCopyWithImpl(
      _$InitEventImpl _value, $Res Function(_$InitEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of InitializationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitEventImpl implements _InitEvent {
  const _$InitEventImpl();

  @override
  String toString() {
    return 'InitializationEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitEvent value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitEvent value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _InitEvent implements InitializationEvent {
  const factory _InitEvent() = _$InitEventImpl;
}

/// @nodoc
mixin _$InitializationState {
  InitializationResult? get initializationResult =>
      throw _privateConstructorUsedError;

  /// Create a copy of InitializationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InitializationStateCopyWith<InitializationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitializationStateCopyWith<$Res> {
  factory $InitializationStateCopyWith(
          InitializationState value, $Res Function(InitializationState) then) =
      _$InitializationStateCopyWithImpl<$Res, InitializationState>;
  @useResult
  $Res call({InitializationResult? initializationResult});

  $InitializationResultCopyWith<$Res>? get initializationResult;
}

/// @nodoc
class _$InitializationStateCopyWithImpl<$Res, $Val extends InitializationState>
    implements $InitializationStateCopyWith<$Res> {
  _$InitializationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InitializationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initializationResult = freezed,
  }) {
    return _then(_value.copyWith(
      initializationResult: freezed == initializationResult
          ? _value.initializationResult
          : initializationResult // ignore: cast_nullable_to_non_nullable
              as InitializationResult?,
    ) as $Val);
  }

  /// Create a copy of InitializationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InitializationResultCopyWith<$Res>? get initializationResult {
    if (_value.initializationResult == null) {
      return null;
    }

    return $InitializationResultCopyWith<$Res>(_value.initializationResult!,
        (value) {
      return _then(_value.copyWith(initializationResult: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitializationStateImplCopyWith<$Res>
    implements $InitializationStateCopyWith<$Res> {
  factory _$$InitializationStateImplCopyWith(_$InitializationStateImpl value,
          $Res Function(_$InitializationStateImpl) then) =
      __$$InitializationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InitializationResult? initializationResult});

  @override
  $InitializationResultCopyWith<$Res>? get initializationResult;
}

/// @nodoc
class __$$InitializationStateImplCopyWithImpl<$Res>
    extends _$InitializationStateCopyWithImpl<$Res, _$InitializationStateImpl>
    implements _$$InitializationStateImplCopyWith<$Res> {
  __$$InitializationStateImplCopyWithImpl(_$InitializationStateImpl _value,
      $Res Function(_$InitializationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InitializationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initializationResult = freezed,
  }) {
    return _then(_$InitializationStateImpl(
      initializationResult: freezed == initializationResult
          ? _value.initializationResult
          : initializationResult // ignore: cast_nullable_to_non_nullable
              as InitializationResult?,
    ));
  }
}

/// @nodoc

class _$InitializationStateImpl implements _InitializationState {
  const _$InitializationStateImpl({this.initializationResult});

  @override
  final InitializationResult? initializationResult;

  @override
  String toString() {
    return 'InitializationState(initializationResult: $initializationResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializationStateImpl &&
            (identical(other.initializationResult, initializationResult) ||
                other.initializationResult == initializationResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initializationResult);

  /// Create a copy of InitializationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializationStateImplCopyWith<_$InitializationStateImpl> get copyWith =>
      __$$InitializationStateImplCopyWithImpl<_$InitializationStateImpl>(
          this, _$identity);
}

abstract class _InitializationState implements InitializationState {
  const factory _InitializationState(
          {final InitializationResult? initializationResult}) =
      _$InitializationStateImpl;

  @override
  InitializationResult? get initializationResult;

  /// Create a copy of InitializationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitializationStateImplCopyWith<_$InitializationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
