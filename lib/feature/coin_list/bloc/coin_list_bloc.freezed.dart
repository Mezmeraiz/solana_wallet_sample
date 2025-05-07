// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coin_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoinListEvent {
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

  /// Create a copy of CoinListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoinListEventCopyWith<CoinListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinListEventCopyWith<$Res> {
  factory $CoinListEventCopyWith(
          CoinListEvent value, $Res Function(CoinListEvent) then) =
      _$CoinListEventCopyWithImpl<$Res, CoinListEvent>;
  @useResult
  $Res call({String pin});
}

/// @nodoc
class _$CoinListEventCopyWithImpl<$Res, $Val extends CoinListEvent>
    implements $CoinListEventCopyWith<$Res> {
  _$CoinListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoinListEvent
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
    implements $CoinListEventCopyWith<$Res> {
  factory _$$PinChangedImplCopyWith(
          _$PinChangedImpl value, $Res Function(_$PinChangedImpl) then) =
      __$$PinChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pin});
}

/// @nodoc
class __$$PinChangedImplCopyWithImpl<$Res>
    extends _$CoinListEventCopyWithImpl<$Res, _$PinChangedImpl>
    implements _$$PinChangedImplCopyWith<$Res> {
  __$$PinChangedImplCopyWithImpl(
      _$PinChangedImpl _value, $Res Function(_$PinChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoinListEvent
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
    return 'CoinListEvent.pinChanged(pin: $pin)';
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

  /// Create a copy of CoinListEvent
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

abstract class _PinChanged implements CoinListEvent {
  const factory _PinChanged({required final String pin}) = _$PinChangedImpl;

  @override
  String get pin;

  /// Create a copy of CoinListEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PinChangedImplCopyWith<_$PinChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CoinListState {
  String get pin => throw _privateConstructorUsedError;
  String? get enteredPin => throw _privateConstructorUsedError;
  CoinListStatus get status => throw _privateConstructorUsedError;
  CoinListAction get action => throw _privateConstructorUsedError;

  /// Create a copy of CoinListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoinListStateCopyWith<CoinListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinListStateCopyWith<$Res> {
  factory $CoinListStateCopyWith(
          CoinListState value, $Res Function(CoinListState) then) =
      _$CoinListStateCopyWithImpl<$Res, CoinListState>;
  @useResult
  $Res call(
      {String pin,
      String? enteredPin,
      CoinListStatus status,
      CoinListAction action});
}

/// @nodoc
class _$CoinListStateCopyWithImpl<$Res, $Val extends CoinListState>
    implements $CoinListStateCopyWith<$Res> {
  _$CoinListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoinListState
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
              as CoinListStatus,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as CoinListAction,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoinListStateImplCopyWith<$Res>
    implements $CoinListStateCopyWith<$Res> {
  factory _$$CoinListStateImplCopyWith(
          _$CoinListStateImpl value, $Res Function(_$CoinListStateImpl) then) =
      __$$CoinListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String pin,
      String? enteredPin,
      CoinListStatus status,
      CoinListAction action});
}

/// @nodoc
class __$$CoinListStateImplCopyWithImpl<$Res>
    extends _$CoinListStateCopyWithImpl<$Res, _$CoinListStateImpl>
    implements _$$CoinListStateImplCopyWith<$Res> {
  __$$CoinListStateImplCopyWithImpl(
      _$CoinListStateImpl _value, $Res Function(_$CoinListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoinListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
    Object? enteredPin = freezed,
    Object? status = null,
    Object? action = null,
  }) {
    return _then(_$CoinListStateImpl(
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
              as CoinListStatus,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as CoinListAction,
    ));
  }
}

/// @nodoc

class _$CoinListStateImpl implements _CoinListState {
  const _$CoinListStateImpl(
      {this.pin = '',
      this.enteredPin,
      this.status = CoinListStatus.idle,
      this.action = CoinListAction.none});

  @override
  @JsonKey()
  final String pin;
  @override
  final String? enteredPin;
  @override
  @JsonKey()
  final CoinListStatus status;
  @override
  @JsonKey()
  final CoinListAction action;

  @override
  String toString() {
    return 'CoinListState(pin: $pin, enteredPin: $enteredPin, status: $status, action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoinListStateImpl &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.enteredPin, enteredPin) ||
                other.enteredPin == enteredPin) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.action, action) || other.action == action));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pin, enteredPin, status, action);

  /// Create a copy of CoinListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoinListStateImplCopyWith<_$CoinListStateImpl> get copyWith =>
      __$$CoinListStateImplCopyWithImpl<_$CoinListStateImpl>(this, _$identity);
}

abstract class _CoinListState implements CoinListState {
  const factory _CoinListState(
      {final String pin,
      final String? enteredPin,
      final CoinListStatus status,
      final CoinListAction action}) = _$CoinListStateImpl;

  @override
  String get pin;
  @override
  String? get enteredPin;
  @override
  CoinListStatus get status;
  @override
  CoinListAction get action;

  /// Create a copy of CoinListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoinListStateImplCopyWith<_$CoinListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
