// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'welcome_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WelcomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String seedPhrase) seedPhraseChanged,
    required TResult Function(String pin) pinChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String seedPhrase)? seedPhraseChanged,
    TResult? Function(String pin)? pinChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String seedPhrase)? seedPhraseChanged,
    TResult Function(String pin)? pinChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SeedPhraseChanged value) seedPhraseChanged,
    required TResult Function(_PinChanged value) pinChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SeedPhraseChanged value)? seedPhraseChanged,
    TResult? Function(_PinChanged value)? pinChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SeedPhraseChanged value)? seedPhraseChanged,
    TResult Function(_PinChanged value)? pinChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WelcomeEventCopyWith<$Res> {
  factory $WelcomeEventCopyWith(
          WelcomeEvent value, $Res Function(WelcomeEvent) then) =
      _$WelcomeEventCopyWithImpl<$Res, WelcomeEvent>;
}

/// @nodoc
class _$WelcomeEventCopyWithImpl<$Res, $Val extends WelcomeEvent>
    implements $WelcomeEventCopyWith<$Res> {
  _$WelcomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WelcomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SeedPhraseChangedImplCopyWith<$Res> {
  factory _$$SeedPhraseChangedImplCopyWith(_$SeedPhraseChangedImpl value,
          $Res Function(_$SeedPhraseChangedImpl) then) =
      __$$SeedPhraseChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String seedPhrase});
}

/// @nodoc
class __$$SeedPhraseChangedImplCopyWithImpl<$Res>
    extends _$WelcomeEventCopyWithImpl<$Res, _$SeedPhraseChangedImpl>
    implements _$$SeedPhraseChangedImplCopyWith<$Res> {
  __$$SeedPhraseChangedImplCopyWithImpl(_$SeedPhraseChangedImpl _value,
      $Res Function(_$SeedPhraseChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of WelcomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seedPhrase = null,
  }) {
    return _then(_$SeedPhraseChangedImpl(
      seedPhrase: null == seedPhrase
          ? _value.seedPhrase
          : seedPhrase // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SeedPhraseChangedImpl implements _SeedPhraseChanged {
  const _$SeedPhraseChangedImpl({required this.seedPhrase});

  @override
  final String seedPhrase;

  @override
  String toString() {
    return 'WelcomeEvent.seedPhraseChanged(seedPhrase: $seedPhrase)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeedPhraseChangedImpl &&
            (identical(other.seedPhrase, seedPhrase) ||
                other.seedPhrase == seedPhrase));
  }

  @override
  int get hashCode => Object.hash(runtimeType, seedPhrase);

  /// Create a copy of WelcomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeedPhraseChangedImplCopyWith<_$SeedPhraseChangedImpl> get copyWith =>
      __$$SeedPhraseChangedImplCopyWithImpl<_$SeedPhraseChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String seedPhrase) seedPhraseChanged,
    required TResult Function(String pin) pinChanged,
  }) {
    return seedPhraseChanged(seedPhrase);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String seedPhrase)? seedPhraseChanged,
    TResult? Function(String pin)? pinChanged,
  }) {
    return seedPhraseChanged?.call(seedPhrase);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String seedPhrase)? seedPhraseChanged,
    TResult Function(String pin)? pinChanged,
    required TResult orElse(),
  }) {
    if (seedPhraseChanged != null) {
      return seedPhraseChanged(seedPhrase);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SeedPhraseChanged value) seedPhraseChanged,
    required TResult Function(_PinChanged value) pinChanged,
  }) {
    return seedPhraseChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SeedPhraseChanged value)? seedPhraseChanged,
    TResult? Function(_PinChanged value)? pinChanged,
  }) {
    return seedPhraseChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SeedPhraseChanged value)? seedPhraseChanged,
    TResult Function(_PinChanged value)? pinChanged,
    required TResult orElse(),
  }) {
    if (seedPhraseChanged != null) {
      return seedPhraseChanged(this);
    }
    return orElse();
  }
}

abstract class _SeedPhraseChanged implements WelcomeEvent {
  const factory _SeedPhraseChanged({required final String seedPhrase}) =
      _$SeedPhraseChangedImpl;

  String get seedPhrase;

  /// Create a copy of WelcomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeedPhraseChangedImplCopyWith<_$SeedPhraseChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PinChangedImplCopyWith<$Res> {
  factory _$$PinChangedImplCopyWith(
          _$PinChangedImpl value, $Res Function(_$PinChangedImpl) then) =
      __$$PinChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String pin});
}

/// @nodoc
class __$$PinChangedImplCopyWithImpl<$Res>
    extends _$WelcomeEventCopyWithImpl<$Res, _$PinChangedImpl>
    implements _$$PinChangedImplCopyWith<$Res> {
  __$$PinChangedImplCopyWithImpl(
      _$PinChangedImpl _value, $Res Function(_$PinChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of WelcomeEvent
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
    return 'WelcomeEvent.pinChanged(pin: $pin)';
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

  /// Create a copy of WelcomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PinChangedImplCopyWith<_$PinChangedImpl> get copyWith =>
      __$$PinChangedImplCopyWithImpl<_$PinChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String seedPhrase) seedPhraseChanged,
    required TResult Function(String pin) pinChanged,
  }) {
    return pinChanged(pin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String seedPhrase)? seedPhraseChanged,
    TResult? Function(String pin)? pinChanged,
  }) {
    return pinChanged?.call(pin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String seedPhrase)? seedPhraseChanged,
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
    required TResult Function(_SeedPhraseChanged value) seedPhraseChanged,
    required TResult Function(_PinChanged value) pinChanged,
  }) {
    return pinChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SeedPhraseChanged value)? seedPhraseChanged,
    TResult? Function(_PinChanged value)? pinChanged,
  }) {
    return pinChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SeedPhraseChanged value)? seedPhraseChanged,
    TResult Function(_PinChanged value)? pinChanged,
    required TResult orElse(),
  }) {
    if (pinChanged != null) {
      return pinChanged(this);
    }
    return orElse();
  }
}

abstract class _PinChanged implements WelcomeEvent {
  const factory _PinChanged({required final String pin}) = _$PinChangedImpl;

  String get pin;

  /// Create a copy of WelcomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PinChangedImplCopyWith<_$PinChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WelcomeState {
  String? get seedPhrase => throw _privateConstructorUsedError;
  String? get pin => throw _privateConstructorUsedError;
  WelcomeStatus get status => throw _privateConstructorUsedError;
  WelcomeAction get action => throw _privateConstructorUsedError;

  /// Create a copy of WelcomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WelcomeStateCopyWith<WelcomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WelcomeStateCopyWith<$Res> {
  factory $WelcomeStateCopyWith(
          WelcomeState value, $Res Function(WelcomeState) then) =
      _$WelcomeStateCopyWithImpl<$Res, WelcomeState>;
  @useResult
  $Res call(
      {String? seedPhrase,
      String? pin,
      WelcomeStatus status,
      WelcomeAction action});
}

/// @nodoc
class _$WelcomeStateCopyWithImpl<$Res, $Val extends WelcomeState>
    implements $WelcomeStateCopyWith<$Res> {
  _$WelcomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WelcomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seedPhrase = freezed,
    Object? pin = freezed,
    Object? status = null,
    Object? action = null,
  }) {
    return _then(_value.copyWith(
      seedPhrase: freezed == seedPhrase
          ? _value.seedPhrase
          : seedPhrase // ignore: cast_nullable_to_non_nullable
              as String?,
      pin: freezed == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WelcomeStatus,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as WelcomeAction,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WelcomeStateImplCopyWith<$Res>
    implements $WelcomeStateCopyWith<$Res> {
  factory _$$WelcomeStateImplCopyWith(
          _$WelcomeStateImpl value, $Res Function(_$WelcomeStateImpl) then) =
      __$$WelcomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? seedPhrase,
      String? pin,
      WelcomeStatus status,
      WelcomeAction action});
}

/// @nodoc
class __$$WelcomeStateImplCopyWithImpl<$Res>
    extends _$WelcomeStateCopyWithImpl<$Res, _$WelcomeStateImpl>
    implements _$$WelcomeStateImplCopyWith<$Res> {
  __$$WelcomeStateImplCopyWithImpl(
      _$WelcomeStateImpl _value, $Res Function(_$WelcomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WelcomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seedPhrase = freezed,
    Object? pin = freezed,
    Object? status = null,
    Object? action = null,
  }) {
    return _then(_$WelcomeStateImpl(
      seedPhrase: freezed == seedPhrase
          ? _value.seedPhrase
          : seedPhrase // ignore: cast_nullable_to_non_nullable
              as String?,
      pin: freezed == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WelcomeStatus,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as WelcomeAction,
    ));
  }
}

/// @nodoc

class _$WelcomeStateImpl implements _WelcomeState {
  const _$WelcomeStateImpl(
      {this.seedPhrase,
      this.pin,
      this.status = WelcomeStatus.idle,
      this.action = WelcomeAction.none});

  @override
  final String? seedPhrase;
  @override
  final String? pin;
  @override
  @JsonKey()
  final WelcomeStatus status;
  @override
  @JsonKey()
  final WelcomeAction action;

  @override
  String toString() {
    return 'WelcomeState(seedPhrase: $seedPhrase, pin: $pin, status: $status, action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WelcomeStateImpl &&
            (identical(other.seedPhrase, seedPhrase) ||
                other.seedPhrase == seedPhrase) &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.action, action) || other.action == action));
  }

  @override
  int get hashCode => Object.hash(runtimeType, seedPhrase, pin, status, action);

  /// Create a copy of WelcomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WelcomeStateImplCopyWith<_$WelcomeStateImpl> get copyWith =>
      __$$WelcomeStateImplCopyWithImpl<_$WelcomeStateImpl>(this, _$identity);
}

abstract class _WelcomeState implements WelcomeState {
  const factory _WelcomeState(
      {final String? seedPhrase,
      final String? pin,
      final WelcomeStatus status,
      final WelcomeAction action}) = _$WelcomeStateImpl;

  @override
  String? get seedPhrase;
  @override
  String? get pin;
  @override
  WelcomeStatus get status;
  @override
  WelcomeAction get action;

  /// Create a copy of WelcomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WelcomeStateImplCopyWith<_$WelcomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
