// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enter_pin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EnterPinEvent {
  String get pin => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pin) pinChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pin)? pinChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pin)? pinChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PinChanged value) pinChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PinChanged value)? pinChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PinChanged value)? pinChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of EnterPinEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EnterPinEventCopyWith<EnterPinEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnterPinEventCopyWith<$Res> {
  factory $EnterPinEventCopyWith(
          EnterPinEvent value, $Res Function(EnterPinEvent) then) =
      _$EnterPinEventCopyWithImpl<$Res, EnterPinEvent>;
  @useResult
  $Res call({String pin});
}

/// @nodoc
class _$EnterPinEventCopyWithImpl<$Res, $Val extends EnterPinEvent>
    implements $EnterPinEventCopyWith<$Res> {
  _$EnterPinEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EnterPinEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
  }) {
    return _then(_value.copyWith(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PinChangedImplCopyWith<$Res>
    implements $EnterPinEventCopyWith<$Res> {
  factory _$$PinChangedImplCopyWith(
          _$PinChangedImpl value, $Res Function(_$PinChangedImpl) then) =
      __$$PinChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pin});
}

/// @nodoc
class __$$PinChangedImplCopyWithImpl<$Res>
    extends _$EnterPinEventCopyWithImpl<$Res, _$PinChangedImpl>
    implements _$$PinChangedImplCopyWith<$Res> {
  __$$PinChangedImplCopyWithImpl(
      _$PinChangedImpl _value, $Res Function(_$PinChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of EnterPinEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
  }) {
    return _then(_$PinChangedImpl(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PinChangedImpl implements _PinChanged {
  const _$PinChangedImpl({required this.pin});

  @override
  final String pin;

  @override
  String toString() {
    return 'EnterPinEvent.pinChanged(pin: $pin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PinChangedImpl &&
            (identical(other.pin, pin) || other.pin == pin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pin);

  /// Create a copy of EnterPinEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PinChangedImplCopyWith<_$PinChangedImpl> get copyWith =>
      __$$PinChangedImplCopyWithImpl<_$PinChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pin) pinChanged,
  }) {
    return pinChanged(pin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pin)? pinChanged,
  }) {
    return pinChanged?.call(pin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pin)? pinChanged,
    required TResult orElse(),
  }) {
    if (pinChanged != null) {
      return pinChanged(pin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PinChanged value) pinChanged,
  }) {
    return pinChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PinChanged value)? pinChanged,
  }) {
    return pinChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PinChanged value)? pinChanged,
    required TResult orElse(),
  }) {
    if (pinChanged != null) {
      return pinChanged(this);
    }
    return orElse();
  }
}

abstract class _PinChanged implements EnterPinEvent {
  const factory _PinChanged({required final String pin}) = _$PinChangedImpl;

  @override
  String get pin;

  /// Create a copy of EnterPinEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PinChangedImplCopyWith<_$PinChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EnterPinState {
  String get pin => throw _privateConstructorUsedError;
  String? get enteredPin => throw _privateConstructorUsedError;
  int? get remainingAttempts => throw _privateConstructorUsedError;
  EnterPinStatus get status => throw _privateConstructorUsedError;
  EnterPinAction get action => throw _privateConstructorUsedError;

  /// Create a copy of EnterPinState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EnterPinStateCopyWith<EnterPinState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnterPinStateCopyWith<$Res> {
  factory $EnterPinStateCopyWith(
          EnterPinState value, $Res Function(EnterPinState) then) =
      _$EnterPinStateCopyWithImpl<$Res, EnterPinState>;
  @useResult
  $Res call(
      {String pin,
      String? enteredPin,
      int? remainingAttempts,
      EnterPinStatus status,
      EnterPinAction action});
}

/// @nodoc
class _$EnterPinStateCopyWithImpl<$Res, $Val extends EnterPinState>
    implements $EnterPinStateCopyWith<$Res> {
  _$EnterPinStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EnterPinState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
    Object? enteredPin = freezed,
    Object? remainingAttempts = freezed,
    Object? status = null,
    Object? action = null,
  }) {
    return _then(_value.copyWith(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
      enteredPin: freezed == enteredPin
          ? _value.enteredPin
          : enteredPin // ignore: cast_nullable_to_non_nullable
              as String?,
      remainingAttempts: freezed == remainingAttempts
          ? _value.remainingAttempts
          : remainingAttempts // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EnterPinStatus,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as EnterPinAction,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EnterPinStateImplCopyWith<$Res>
    implements $EnterPinStateCopyWith<$Res> {
  factory _$$EnterPinStateImplCopyWith(
          _$EnterPinStateImpl value, $Res Function(_$EnterPinStateImpl) then) =
      __$$EnterPinStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String pin,
      String? enteredPin,
      int? remainingAttempts,
      EnterPinStatus status,
      EnterPinAction action});
}

/// @nodoc
class __$$EnterPinStateImplCopyWithImpl<$Res>
    extends _$EnterPinStateCopyWithImpl<$Res, _$EnterPinStateImpl>
    implements _$$EnterPinStateImplCopyWith<$Res> {
  __$$EnterPinStateImplCopyWithImpl(
      _$EnterPinStateImpl _value, $Res Function(_$EnterPinStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of EnterPinState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
    Object? enteredPin = freezed,
    Object? remainingAttempts = freezed,
    Object? status = null,
    Object? action = null,
  }) {
    return _then(_$EnterPinStateImpl(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
      enteredPin: freezed == enteredPin
          ? _value.enteredPin
          : enteredPin // ignore: cast_nullable_to_non_nullable
              as String?,
      remainingAttempts: freezed == remainingAttempts
          ? _value.remainingAttempts
          : remainingAttempts // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EnterPinStatus,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as EnterPinAction,
    ));
  }
}

/// @nodoc

class _$EnterPinStateImpl implements _EnterPinState {
  const _$EnterPinStateImpl(
      {this.pin = '',
      this.enteredPin,
      this.remainingAttempts,
      this.status = EnterPinStatus.idle,
      this.action = EnterPinAction.none});

  @override
  @JsonKey()
  final String pin;
  @override
  final String? enteredPin;
  @override
  final int? remainingAttempts;
  @override
  @JsonKey()
  final EnterPinStatus status;
  @override
  @JsonKey()
  final EnterPinAction action;

  @override
  String toString() {
    return 'EnterPinState(pin: $pin, enteredPin: $enteredPin, remainingAttempts: $remainingAttempts, status: $status, action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnterPinStateImpl &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.enteredPin, enteredPin) ||
                other.enteredPin == enteredPin) &&
            (identical(other.remainingAttempts, remainingAttempts) ||
                other.remainingAttempts == remainingAttempts) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.action, action) || other.action == action));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, pin, enteredPin, remainingAttempts, status, action);

  /// Create a copy of EnterPinState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EnterPinStateImplCopyWith<_$EnterPinStateImpl> get copyWith =>
      __$$EnterPinStateImplCopyWithImpl<_$EnterPinStateImpl>(this, _$identity);
}

abstract class _EnterPinState implements EnterPinState {
  const factory _EnterPinState(
      {final String pin,
      final String? enteredPin,
      final int? remainingAttempts,
      final EnterPinStatus status,
      final EnterPinAction action}) = _$EnterPinStateImpl;

  @override
  String get pin;
  @override
  String? get enteredPin;
  @override
  int? get remainingAttempts;
  @override
  EnterPinStatus get status;
  @override
  EnterPinAction get action;

  /// Create a copy of EnterPinState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EnterPinStateImplCopyWith<_$EnterPinStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
