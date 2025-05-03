// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_pin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SetPinEvent {
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

  /// Create a copy of SetPinEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SetPinEventCopyWith<SetPinEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetPinEventCopyWith<$Res> {
  factory $SetPinEventCopyWith(
          SetPinEvent value, $Res Function(SetPinEvent) then) =
      _$SetPinEventCopyWithImpl<$Res, SetPinEvent>;
  @useResult
  $Res call({String pin});
}

/// @nodoc
class _$SetPinEventCopyWithImpl<$Res, $Val extends SetPinEvent>
    implements $SetPinEventCopyWith<$Res> {
  _$SetPinEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SetPinEvent
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
    implements $SetPinEventCopyWith<$Res> {
  factory _$$PinChangedImplCopyWith(
          _$PinChangedImpl value, $Res Function(_$PinChangedImpl) then) =
      __$$PinChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pin});
}

/// @nodoc
class __$$PinChangedImplCopyWithImpl<$Res>
    extends _$SetPinEventCopyWithImpl<$Res, _$PinChangedImpl>
    implements _$$PinChangedImplCopyWith<$Res> {
  __$$PinChangedImplCopyWithImpl(
      _$PinChangedImpl _value, $Res Function(_$PinChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SetPinEvent
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
    return 'SetPinEvent.pinChanged(pin: $pin)';
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

  /// Create a copy of SetPinEvent
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

abstract class _PinChanged implements SetPinEvent {
  const factory _PinChanged({required final String pin}) = _$PinChangedImpl;

  @override
  String get pin;

  /// Create a copy of SetPinEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PinChangedImplCopyWith<_$PinChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SetPinState {
  String get pin => throw _privateConstructorUsedError;
  String? get enteredPin => throw _privateConstructorUsedError;
  SetPinStatus get status => throw _privateConstructorUsedError;
  SetPinAction get action => throw _privateConstructorUsedError;

  /// Create a copy of SetPinState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SetPinStateCopyWith<SetPinState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetPinStateCopyWith<$Res> {
  factory $SetPinStateCopyWith(
          SetPinState value, $Res Function(SetPinState) then) =
      _$SetPinStateCopyWithImpl<$Res, SetPinState>;
  @useResult
  $Res call(
      {String pin,
      String? enteredPin,
      SetPinStatus status,
      SetPinAction action});
}

/// @nodoc
class _$SetPinStateCopyWithImpl<$Res, $Val extends SetPinState>
    implements $SetPinStateCopyWith<$Res> {
  _$SetPinStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SetPinState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
    Object? enteredPin = freezed,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SetPinStatus,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as SetPinAction,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetPinStateImplCopyWith<$Res>
    implements $SetPinStateCopyWith<$Res> {
  factory _$$SetPinStateImplCopyWith(
          _$SetPinStateImpl value, $Res Function(_$SetPinStateImpl) then) =
      __$$SetPinStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String pin,
      String? enteredPin,
      SetPinStatus status,
      SetPinAction action});
}

/// @nodoc
class __$$SetPinStateImplCopyWithImpl<$Res>
    extends _$SetPinStateCopyWithImpl<$Res, _$SetPinStateImpl>
    implements _$$SetPinStateImplCopyWith<$Res> {
  __$$SetPinStateImplCopyWithImpl(
      _$SetPinStateImpl _value, $Res Function(_$SetPinStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SetPinState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
    Object? enteredPin = freezed,
    Object? status = null,
    Object? action = null,
  }) {
    return _then(_$SetPinStateImpl(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
      enteredPin: freezed == enteredPin
          ? _value.enteredPin
          : enteredPin // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SetPinStatus,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as SetPinAction,
    ));
  }
}

/// @nodoc

class _$SetPinStateImpl implements _SetPinState {
  const _$SetPinStateImpl(
      {this.pin = '',
      this.enteredPin,
      this.status = SetPinStatus.idle,
      this.action = SetPinAction.none});

  @override
  @JsonKey()
  final String pin;
  @override
  final String? enteredPin;
  @override
  @JsonKey()
  final SetPinStatus status;
  @override
  @JsonKey()
  final SetPinAction action;

  @override
  String toString() {
    return 'SetPinState(pin: $pin, enteredPin: $enteredPin, status: $status, action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetPinStateImpl &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.enteredPin, enteredPin) ||
                other.enteredPin == enteredPin) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.action, action) || other.action == action));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pin, enteredPin, status, action);

  /// Create a copy of SetPinState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetPinStateImplCopyWith<_$SetPinStateImpl> get copyWith =>
      __$$SetPinStateImplCopyWithImpl<_$SetPinStateImpl>(this, _$identity);
}

abstract class _SetPinState implements SetPinState {
  const factory _SetPinState(
      {final String pin,
      final String? enteredPin,
      final SetPinStatus status,
      final SetPinAction action}) = _$SetPinStateImpl;

  @override
  String get pin;
  @override
  String? get enteredPin;
  @override
  SetPinStatus get status;
  @override
  SetPinAction get action;

  /// Create a copy of SetPinState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetPinStateImplCopyWith<_$SetPinStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
