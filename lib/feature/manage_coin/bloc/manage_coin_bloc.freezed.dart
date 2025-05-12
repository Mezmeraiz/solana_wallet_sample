// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manage_coin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ManageCoinEvent {
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

  /// Create a copy of ManageCoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ManageCoinEventCopyWith<ManageCoinEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManageCoinEventCopyWith<$Res> {
  factory $ManageCoinEventCopyWith(
          ManageCoinEvent value, $Res Function(ManageCoinEvent) then) =
      _$ManageCoinEventCopyWithImpl<$Res, ManageCoinEvent>;
  @useResult
  $Res call({String pin});
}

/// @nodoc
class _$ManageCoinEventCopyWithImpl<$Res, $Val extends ManageCoinEvent>
    implements $ManageCoinEventCopyWith<$Res> {
  _$ManageCoinEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManageCoinEvent
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
    implements $ManageCoinEventCopyWith<$Res> {
  factory _$$PinChangedImplCopyWith(
          _$PinChangedImpl value, $Res Function(_$PinChangedImpl) then) =
      __$$PinChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pin});
}

/// @nodoc
class __$$PinChangedImplCopyWithImpl<$Res>
    extends _$ManageCoinEventCopyWithImpl<$Res, _$PinChangedImpl>
    implements _$$PinChangedImplCopyWith<$Res> {
  __$$PinChangedImplCopyWithImpl(
      _$PinChangedImpl _value, $Res Function(_$PinChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManageCoinEvent
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
    return 'ManageCoinEvent.pinChanged(pin: $pin)';
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

  /// Create a copy of ManageCoinEvent
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

abstract class _PinChanged implements ManageCoinEvent {
  const factory _PinChanged({required final String pin}) = _$PinChangedImpl;

  @override
  String get pin;

  /// Create a copy of ManageCoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PinChangedImplCopyWith<_$PinChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ManageCoinState {
  String get pin => throw _privateConstructorUsedError;
  String? get enteredPin => throw _privateConstructorUsedError;
  ManageCoinStatus get status => throw _privateConstructorUsedError;
  ManageCoinAction get action => throw _privateConstructorUsedError;

  /// Create a copy of ManageCoinState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ManageCoinStateCopyWith<ManageCoinState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManageCoinStateCopyWith<$Res> {
  factory $ManageCoinStateCopyWith(
          ManageCoinState value, $Res Function(ManageCoinState) then) =
      _$ManageCoinStateCopyWithImpl<$Res, ManageCoinState>;
  @useResult
  $Res call(
      {String pin,
      String? enteredPin,
      ManageCoinStatus status,
      ManageCoinAction action});
}

/// @nodoc
class _$ManageCoinStateCopyWithImpl<$Res, $Val extends ManageCoinState>
    implements $ManageCoinStateCopyWith<$Res> {
  _$ManageCoinStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManageCoinState
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
              as ManageCoinStatus,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as ManageCoinAction,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ManageCoinStateImplCopyWith<$Res>
    implements $ManageCoinStateCopyWith<$Res> {
  factory _$$ManageCoinStateImplCopyWith(
          _$ManageCoinStateImpl value, $Res Function(_$ManageCoinStateImpl) then) =
      __$$ManageCoinStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String pin,
      String? enteredPin,
      ManageCoinStatus status,
      ManageCoinAction action});
}

/// @nodoc
class __$$ManageCoinStateImplCopyWithImpl<$Res>
    extends _$ManageCoinStateCopyWithImpl<$Res, _$ManageCoinStateImpl>
    implements _$$ManageCoinStateImplCopyWith<$Res> {
  __$$ManageCoinStateImplCopyWithImpl(
      _$ManageCoinStateImpl _value, $Res Function(_$ManageCoinStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManageCoinState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
    Object? enteredPin = freezed,
    Object? status = null,
    Object? action = null,
  }) {
    return _then(_$ManageCoinStateImpl(
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
              as ManageCoinStatus,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as ManageCoinAction,
    ));
  }
}

/// @nodoc

class _$ManageCoinStateImpl implements _ManageCoinState {
  const _$ManageCoinStateImpl(
      {this.pin = '',
      this.enteredPin,
      this.status = ManageCoinStatus.idle,
      this.action = ManageCoinAction.none});

  @override
  @JsonKey()
  final String pin;
  @override
  final String? enteredPin;
  @override
  @JsonKey()
  final ManageCoinStatus status;
  @override
  @JsonKey()
  final ManageCoinAction action;

  @override
  String toString() {
    return 'ManageCoinState(pin: $pin, enteredPin: $enteredPin, status: $status, action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManageCoinStateImpl &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.enteredPin, enteredPin) ||
                other.enteredPin == enteredPin) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.action, action) || other.action == action));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pin, enteredPin, status, action);

  /// Create a copy of ManageCoinState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ManageCoinStateImplCopyWith<_$ManageCoinStateImpl> get copyWith =>
      __$$ManageCoinStateImplCopyWithImpl<_$ManageCoinStateImpl>(this, _$identity);
}

abstract class _ManageCoinState implements ManageCoinState {
  const factory _ManageCoinState(
      {final String pin,
      final String? enteredPin,
      final ManageCoinStatus status,
      final ManageCoinAction action}) = _$ManageCoinStateImpl;

  @override
  String get pin;
  @override
  String? get enteredPin;
  @override
  ManageCoinStatus get status;
  @override
  ManageCoinAction get action;

  /// Create a copy of ManageCoinState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ManageCoinStateImplCopyWith<_$ManageCoinStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
