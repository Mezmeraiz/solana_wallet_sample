// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SendTransactionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String address) addressChanged,
    required TResult Function(String amount) amountChanged,
    required TResult Function() calculateFee,
    required TResult Function(String pin) pinReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String address)? addressChanged,
    TResult? Function(String amount)? amountChanged,
    TResult? Function()? calculateFee,
    TResult? Function(String pin)? pinReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String address)? addressChanged,
    TResult Function(String amount)? amountChanged,
    TResult Function()? calculateFee,
    TResult Function(String pin)? pinReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_CalculateFee value) calculateFee,
    required TResult Function(_PinReceived value) pinReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddressChanged value)? addressChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_CalculateFee value)? calculateFee,
    TResult? Function(_PinReceived value)? pinReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_CalculateFee value)? calculateFee,
    TResult Function(_PinReceived value)? pinReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendTransactionEventCopyWith<$Res> {
  factory $SendTransactionEventCopyWith(SendTransactionEvent value,
          $Res Function(SendTransactionEvent) then) =
      _$SendTransactionEventCopyWithImpl<$Res, SendTransactionEvent>;
}

/// @nodoc
class _$SendTransactionEventCopyWithImpl<$Res,
        $Val extends SendTransactionEvent>
    implements $SendTransactionEventCopyWith<$Res> {
  _$SendTransactionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$SendTransactionEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'SendTransactionEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String address) addressChanged,
    required TResult Function(String amount) amountChanged,
    required TResult Function() calculateFee,
    required TResult Function(String pin) pinReceived,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String address)? addressChanged,
    TResult? Function(String amount)? amountChanged,
    TResult? Function()? calculateFee,
    TResult? Function(String pin)? pinReceived,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String address)? addressChanged,
    TResult Function(String amount)? amountChanged,
    TResult Function()? calculateFee,
    TResult Function(String pin)? pinReceived,
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
    required TResult Function(_Init value) init,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_CalculateFee value) calculateFee,
    required TResult Function(_PinReceived value) pinReceived,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddressChanged value)? addressChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_CalculateFee value)? calculateFee,
    TResult? Function(_PinReceived value)? pinReceived,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_CalculateFee value)? calculateFee,
    TResult Function(_PinReceived value)? pinReceived,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements SendTransactionEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$AddressChangedImplCopyWith<$Res> {
  factory _$$AddressChangedImplCopyWith(_$AddressChangedImpl value,
          $Res Function(_$AddressChangedImpl) then) =
      __$$AddressChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String address});
}

/// @nodoc
class __$$AddressChangedImplCopyWithImpl<$Res>
    extends _$SendTransactionEventCopyWithImpl<$Res, _$AddressChangedImpl>
    implements _$$AddressChangedImplCopyWith<$Res> {
  __$$AddressChangedImplCopyWithImpl(
      _$AddressChangedImpl _value, $Res Function(_$AddressChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$AddressChangedImpl(
      null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddressChangedImpl implements _AddressChanged {
  const _$AddressChangedImpl(this.address);

  @override
  final String address;

  @override
  String toString() {
    return 'SendTransactionEvent.addressChanged(address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressChangedImpl &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  /// Create a copy of SendTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressChangedImplCopyWith<_$AddressChangedImpl> get copyWith =>
      __$$AddressChangedImplCopyWithImpl<_$AddressChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String address) addressChanged,
    required TResult Function(String amount) amountChanged,
    required TResult Function() calculateFee,
    required TResult Function(String pin) pinReceived,
  }) {
    return addressChanged(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String address)? addressChanged,
    TResult? Function(String amount)? amountChanged,
    TResult? Function()? calculateFee,
    TResult? Function(String pin)? pinReceived,
  }) {
    return addressChanged?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String address)? addressChanged,
    TResult Function(String amount)? amountChanged,
    TResult Function()? calculateFee,
    TResult Function(String pin)? pinReceived,
    required TResult orElse(),
  }) {
    if (addressChanged != null) {
      return addressChanged(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_CalculateFee value) calculateFee,
    required TResult Function(_PinReceived value) pinReceived,
  }) {
    return addressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddressChanged value)? addressChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_CalculateFee value)? calculateFee,
    TResult? Function(_PinReceived value)? pinReceived,
  }) {
    return addressChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_CalculateFee value)? calculateFee,
    TResult Function(_PinReceived value)? pinReceived,
    required TResult orElse(),
  }) {
    if (addressChanged != null) {
      return addressChanged(this);
    }
    return orElse();
  }
}

abstract class _AddressChanged implements SendTransactionEvent {
  const factory _AddressChanged(final String address) = _$AddressChangedImpl;

  String get address;

  /// Create a copy of SendTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressChangedImplCopyWith<_$AddressChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AmountChangedImplCopyWith<$Res> {
  factory _$$AmountChangedImplCopyWith(
          _$AmountChangedImpl value, $Res Function(_$AmountChangedImpl) then) =
      __$$AmountChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String amount});
}

/// @nodoc
class __$$AmountChangedImplCopyWithImpl<$Res>
    extends _$SendTransactionEventCopyWithImpl<$Res, _$AmountChangedImpl>
    implements _$$AmountChangedImplCopyWith<$Res> {
  __$$AmountChangedImplCopyWithImpl(
      _$AmountChangedImpl _value, $Res Function(_$AmountChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$AmountChangedImpl(
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AmountChangedImpl implements _AmountChanged {
  const _$AmountChangedImpl(this.amount);

  @override
  final String amount;

  @override
  String toString() {
    return 'SendTransactionEvent.amountChanged(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AmountChangedImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  /// Create a copy of SendTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AmountChangedImplCopyWith<_$AmountChangedImpl> get copyWith =>
      __$$AmountChangedImplCopyWithImpl<_$AmountChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String address) addressChanged,
    required TResult Function(String amount) amountChanged,
    required TResult Function() calculateFee,
    required TResult Function(String pin) pinReceived,
  }) {
    return amountChanged(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String address)? addressChanged,
    TResult? Function(String amount)? amountChanged,
    TResult? Function()? calculateFee,
    TResult? Function(String pin)? pinReceived,
  }) {
    return amountChanged?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String address)? addressChanged,
    TResult Function(String amount)? amountChanged,
    TResult Function()? calculateFee,
    TResult Function(String pin)? pinReceived,
    required TResult orElse(),
  }) {
    if (amountChanged != null) {
      return amountChanged(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_CalculateFee value) calculateFee,
    required TResult Function(_PinReceived value) pinReceived,
  }) {
    return amountChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddressChanged value)? addressChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_CalculateFee value)? calculateFee,
    TResult? Function(_PinReceived value)? pinReceived,
  }) {
    return amountChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_CalculateFee value)? calculateFee,
    TResult Function(_PinReceived value)? pinReceived,
    required TResult orElse(),
  }) {
    if (amountChanged != null) {
      return amountChanged(this);
    }
    return orElse();
  }
}

abstract class _AmountChanged implements SendTransactionEvent {
  const factory _AmountChanged(final String amount) = _$AmountChangedImpl;

  String get amount;

  /// Create a copy of SendTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AmountChangedImplCopyWith<_$AmountChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CalculateFeeImplCopyWith<$Res> {
  factory _$$CalculateFeeImplCopyWith(
          _$CalculateFeeImpl value, $Res Function(_$CalculateFeeImpl) then) =
      __$$CalculateFeeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CalculateFeeImplCopyWithImpl<$Res>
    extends _$SendTransactionEventCopyWithImpl<$Res, _$CalculateFeeImpl>
    implements _$$CalculateFeeImplCopyWith<$Res> {
  __$$CalculateFeeImplCopyWithImpl(
      _$CalculateFeeImpl _value, $Res Function(_$CalculateFeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CalculateFeeImpl implements _CalculateFee {
  const _$CalculateFeeImpl();

  @override
  String toString() {
    return 'SendTransactionEvent.calculateFee()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CalculateFeeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String address) addressChanged,
    required TResult Function(String amount) amountChanged,
    required TResult Function() calculateFee,
    required TResult Function(String pin) pinReceived,
  }) {
    return calculateFee();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String address)? addressChanged,
    TResult? Function(String amount)? amountChanged,
    TResult? Function()? calculateFee,
    TResult? Function(String pin)? pinReceived,
  }) {
    return calculateFee?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String address)? addressChanged,
    TResult Function(String amount)? amountChanged,
    TResult Function()? calculateFee,
    TResult Function(String pin)? pinReceived,
    required TResult orElse(),
  }) {
    if (calculateFee != null) {
      return calculateFee();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_CalculateFee value) calculateFee,
    required TResult Function(_PinReceived value) pinReceived,
  }) {
    return calculateFee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddressChanged value)? addressChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_CalculateFee value)? calculateFee,
    TResult? Function(_PinReceived value)? pinReceived,
  }) {
    return calculateFee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_CalculateFee value)? calculateFee,
    TResult Function(_PinReceived value)? pinReceived,
    required TResult orElse(),
  }) {
    if (calculateFee != null) {
      return calculateFee(this);
    }
    return orElse();
  }
}

abstract class _CalculateFee implements SendTransactionEvent {
  const factory _CalculateFee() = _$CalculateFeeImpl;
}

/// @nodoc
abstract class _$$PinReceivedImplCopyWith<$Res> {
  factory _$$PinReceivedImplCopyWith(
          _$PinReceivedImpl value, $Res Function(_$PinReceivedImpl) then) =
      __$$PinReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String pin});
}

/// @nodoc
class __$$PinReceivedImplCopyWithImpl<$Res>
    extends _$SendTransactionEventCopyWithImpl<$Res, _$PinReceivedImpl>
    implements _$$PinReceivedImplCopyWith<$Res> {
  __$$PinReceivedImplCopyWithImpl(
      _$PinReceivedImpl _value, $Res Function(_$PinReceivedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
  }) {
    return _then(_$PinReceivedImpl(
      null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PinReceivedImpl implements _PinReceived {
  const _$PinReceivedImpl(this.pin);

  @override
  final String pin;

  @override
  String toString() {
    return 'SendTransactionEvent.pinReceived(pin: $pin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PinReceivedImpl &&
            (identical(other.pin, pin) || other.pin == pin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pin);

  /// Create a copy of SendTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PinReceivedImplCopyWith<_$PinReceivedImpl> get copyWith =>
      __$$PinReceivedImplCopyWithImpl<_$PinReceivedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String address) addressChanged,
    required TResult Function(String amount) amountChanged,
    required TResult Function() calculateFee,
    required TResult Function(String pin) pinReceived,
  }) {
    return pinReceived(pin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String address)? addressChanged,
    TResult? Function(String amount)? amountChanged,
    TResult? Function()? calculateFee,
    TResult? Function(String pin)? pinReceived,
  }) {
    return pinReceived?.call(pin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String address)? addressChanged,
    TResult Function(String amount)? amountChanged,
    TResult Function()? calculateFee,
    TResult Function(String pin)? pinReceived,
    required TResult orElse(),
  }) {
    if (pinReceived != null) {
      return pinReceived(pin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_CalculateFee value) calculateFee,
    required TResult Function(_PinReceived value) pinReceived,
  }) {
    return pinReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddressChanged value)? addressChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_CalculateFee value)? calculateFee,
    TResult? Function(_PinReceived value)? pinReceived,
  }) {
    return pinReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_CalculateFee value)? calculateFee,
    TResult Function(_PinReceived value)? pinReceived,
    required TResult orElse(),
  }) {
    if (pinReceived != null) {
      return pinReceived(this);
    }
    return orElse();
  }
}

abstract class _PinReceived implements SendTransactionEvent {
  const factory _PinReceived(final String pin) = _$PinReceivedImpl;

  String get pin;

  /// Create a copy of SendTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PinReceivedImplCopyWith<_$PinReceivedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SendTransactionState {
  String get coinId => throw _privateConstructorUsedError;
  BaseCoinData get baseCoinData => throw _privateConstructorUsedError;
  BlockchainCoinData get blockchainCoinData =>
      throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  SendTransactionLoadingStatus get loadingStatus =>
      throw _privateConstructorUsedError;
  SendTransactionAction get action => throw _privateConstructorUsedError;

  /// Create a copy of SendTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendTransactionStateCopyWith<SendTransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendTransactionStateCopyWith<$Res> {
  factory $SendTransactionStateCopyWith(SendTransactionState value,
          $Res Function(SendTransactionState) then) =
      _$SendTransactionStateCopyWithImpl<$Res, SendTransactionState>;
  @useResult
  $Res call(
      {String coinId,
      BaseCoinData baseCoinData,
      BlockchainCoinData blockchainCoinData,
      String amount,
      String address,
      SendTransactionLoadingStatus loadingStatus,
      SendTransactionAction action});

  $BaseCoinDataCopyWith<$Res> get baseCoinData;
  $BlockchainCoinDataCopyWith<$Res> get blockchainCoinData;
  $SendTransactionActionCopyWith<$Res> get action;
}

/// @nodoc
class _$SendTransactionStateCopyWithImpl<$Res,
        $Val extends SendTransactionState>
    implements $SendTransactionStateCopyWith<$Res> {
  _$SendTransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coinId = null,
    Object? baseCoinData = null,
    Object? blockchainCoinData = null,
    Object? amount = null,
    Object? address = null,
    Object? loadingStatus = null,
    Object? action = null,
  }) {
    return _then(_value.copyWith(
      coinId: null == coinId
          ? _value.coinId
          : coinId // ignore: cast_nullable_to_non_nullable
              as String,
      baseCoinData: null == baseCoinData
          ? _value.baseCoinData
          : baseCoinData // ignore: cast_nullable_to_non_nullable
              as BaseCoinData,
      blockchainCoinData: null == blockchainCoinData
          ? _value.blockchainCoinData
          : blockchainCoinData // ignore: cast_nullable_to_non_nullable
              as BlockchainCoinData,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as SendTransactionLoadingStatus,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as SendTransactionAction,
    ) as $Val);
  }

  /// Create a copy of SendTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseCoinDataCopyWith<$Res> get baseCoinData {
    return $BaseCoinDataCopyWith<$Res>(_value.baseCoinData, (value) {
      return _then(_value.copyWith(baseCoinData: value) as $Val);
    });
  }

  /// Create a copy of SendTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlockchainCoinDataCopyWith<$Res> get blockchainCoinData {
    return $BlockchainCoinDataCopyWith<$Res>(_value.blockchainCoinData,
        (value) {
      return _then(_value.copyWith(blockchainCoinData: value) as $Val);
    });
  }

  /// Create a copy of SendTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SendTransactionActionCopyWith<$Res> get action {
    return $SendTransactionActionCopyWith<$Res>(_value.action, (value) {
      return _then(_value.copyWith(action: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SendTransactionStateImplCopyWith<$Res>
    implements $SendTransactionStateCopyWith<$Res> {
  factory _$$SendTransactionStateImplCopyWith(_$SendTransactionStateImpl value,
          $Res Function(_$SendTransactionStateImpl) then) =
      __$$SendTransactionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String coinId,
      BaseCoinData baseCoinData,
      BlockchainCoinData blockchainCoinData,
      String amount,
      String address,
      SendTransactionLoadingStatus loadingStatus,
      SendTransactionAction action});

  @override
  $BaseCoinDataCopyWith<$Res> get baseCoinData;
  @override
  $BlockchainCoinDataCopyWith<$Res> get blockchainCoinData;
  @override
  $SendTransactionActionCopyWith<$Res> get action;
}

/// @nodoc
class __$$SendTransactionStateImplCopyWithImpl<$Res>
    extends _$SendTransactionStateCopyWithImpl<$Res, _$SendTransactionStateImpl>
    implements _$$SendTransactionStateImplCopyWith<$Res> {
  __$$SendTransactionStateImplCopyWithImpl(_$SendTransactionStateImpl _value,
      $Res Function(_$SendTransactionStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coinId = null,
    Object? baseCoinData = null,
    Object? blockchainCoinData = null,
    Object? amount = null,
    Object? address = null,
    Object? loadingStatus = null,
    Object? action = null,
  }) {
    return _then(_$SendTransactionStateImpl(
      coinId: null == coinId
          ? _value.coinId
          : coinId // ignore: cast_nullable_to_non_nullable
              as String,
      baseCoinData: null == baseCoinData
          ? _value.baseCoinData
          : baseCoinData // ignore: cast_nullable_to_non_nullable
              as BaseCoinData,
      blockchainCoinData: null == blockchainCoinData
          ? _value.blockchainCoinData
          : blockchainCoinData // ignore: cast_nullable_to_non_nullable
              as BlockchainCoinData,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as SendTransactionLoadingStatus,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as SendTransactionAction,
    ));
  }
}

/// @nodoc

class _$SendTransactionStateImpl implements _SendTransactionState {
  const _$SendTransactionStateImpl(
      {required this.coinId,
      required this.baseCoinData,
      required this.blockchainCoinData,
      this.amount = '',
      this.address = '',
      this.loadingStatus = SendTransactionLoadingStatus.idle,
      this.action = const SendTransactionAction.none()});

  @override
  final String coinId;
  @override
  final BaseCoinData baseCoinData;
  @override
  final BlockchainCoinData blockchainCoinData;
  @override
  @JsonKey()
  final String amount;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final SendTransactionLoadingStatus loadingStatus;
  @override
  @JsonKey()
  final SendTransactionAction action;

  @override
  String toString() {
    return 'SendTransactionState(coinId: $coinId, baseCoinData: $baseCoinData, blockchainCoinData: $blockchainCoinData, amount: $amount, address: $address, loadingStatus: $loadingStatus, action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendTransactionStateImpl &&
            (identical(other.coinId, coinId) || other.coinId == coinId) &&
            (identical(other.baseCoinData, baseCoinData) ||
                other.baseCoinData == baseCoinData) &&
            (identical(other.blockchainCoinData, blockchainCoinData) ||
                other.blockchainCoinData == blockchainCoinData) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.loadingStatus, loadingStatus) ||
                other.loadingStatus == loadingStatus) &&
            (identical(other.action, action) || other.action == action));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coinId, baseCoinData,
      blockchainCoinData, amount, address, loadingStatus, action);

  /// Create a copy of SendTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendTransactionStateImplCopyWith<_$SendTransactionStateImpl>
      get copyWith =>
          __$$SendTransactionStateImplCopyWithImpl<_$SendTransactionStateImpl>(
              this, _$identity);
}

abstract class _SendTransactionState implements SendTransactionState {
  const factory _SendTransactionState(
      {required final String coinId,
      required final BaseCoinData baseCoinData,
      required final BlockchainCoinData blockchainCoinData,
      final String amount,
      final String address,
      final SendTransactionLoadingStatus loadingStatus,
      final SendTransactionAction action}) = _$SendTransactionStateImpl;

  @override
  String get coinId;
  @override
  BaseCoinData get baseCoinData;
  @override
  BlockchainCoinData get blockchainCoinData;
  @override
  String get amount;
  @override
  String get address;
  @override
  SendTransactionLoadingStatus get loadingStatus;
  @override
  SendTransactionAction get action;

  /// Create a copy of SendTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendTransactionStateImplCopyWith<_$SendTransactionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SendTransactionAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() tnxError,
    required TResult Function(int fee) feeCalculated,
    required TResult Function(String tnx) transactionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? tnxError,
    TResult? Function(int fee)? feeCalculated,
    TResult? Function(String tnx)? transactionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? tnxError,
    TResult Function(int fee)? feeCalculated,
    TResult Function(String tnx)? transactionSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoneAction value) none,
    required TResult Function(tnxErrorAction value) tnxError,
    required TResult Function(FeeCalculatedAction value) feeCalculated,
    required TResult Function(TransactionSuccessAction value)
        transactionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoneAction value)? none,
    TResult? Function(tnxErrorAction value)? tnxError,
    TResult? Function(FeeCalculatedAction value)? feeCalculated,
    TResult? Function(TransactionSuccessAction value)? transactionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoneAction value)? none,
    TResult Function(tnxErrorAction value)? tnxError,
    TResult Function(FeeCalculatedAction value)? feeCalculated,
    TResult Function(TransactionSuccessAction value)? transactionSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendTransactionActionCopyWith<$Res> {
  factory $SendTransactionActionCopyWith(SendTransactionAction value,
          $Res Function(SendTransactionAction) then) =
      _$SendTransactionActionCopyWithImpl<$Res, SendTransactionAction>;
}

/// @nodoc
class _$SendTransactionActionCopyWithImpl<$Res,
        $Val extends SendTransactionAction>
    implements $SendTransactionActionCopyWith<$Res> {
  _$SendTransactionActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendTransactionAction
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NoneActionImplCopyWith<$Res> {
  factory _$$NoneActionImplCopyWith(
          _$NoneActionImpl value, $Res Function(_$NoneActionImpl) then) =
      __$$NoneActionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoneActionImplCopyWithImpl<$Res>
    extends _$SendTransactionActionCopyWithImpl<$Res, _$NoneActionImpl>
    implements _$$NoneActionImplCopyWith<$Res> {
  __$$NoneActionImplCopyWithImpl(
      _$NoneActionImpl _value, $Res Function(_$NoneActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendTransactionAction
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoneActionImpl implements NoneAction {
  const _$NoneActionImpl();

  @override
  String toString() {
    return 'SendTransactionAction.none()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoneActionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() tnxError,
    required TResult Function(int fee) feeCalculated,
    required TResult Function(String tnx) transactionSuccess,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? tnxError,
    TResult? Function(int fee)? feeCalculated,
    TResult? Function(String tnx)? transactionSuccess,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? tnxError,
    TResult Function(int fee)? feeCalculated,
    TResult Function(String tnx)? transactionSuccess,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoneAction value) none,
    required TResult Function(tnxErrorAction value) tnxError,
    required TResult Function(FeeCalculatedAction value) feeCalculated,
    required TResult Function(TransactionSuccessAction value)
        transactionSuccess,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoneAction value)? none,
    TResult? Function(tnxErrorAction value)? tnxError,
    TResult? Function(FeeCalculatedAction value)? feeCalculated,
    TResult? Function(TransactionSuccessAction value)? transactionSuccess,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoneAction value)? none,
    TResult Function(tnxErrorAction value)? tnxError,
    TResult Function(FeeCalculatedAction value)? feeCalculated,
    TResult Function(TransactionSuccessAction value)? transactionSuccess,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class NoneAction implements SendTransactionAction {
  const factory NoneAction() = _$NoneActionImpl;
}

/// @nodoc
abstract class _$$tnxErrorActionImplCopyWith<$Res> {
  factory _$$tnxErrorActionImplCopyWith(_$tnxErrorActionImpl value,
          $Res Function(_$tnxErrorActionImpl) then) =
      __$$tnxErrorActionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$tnxErrorActionImplCopyWithImpl<$Res>
    extends _$SendTransactionActionCopyWithImpl<$Res, _$tnxErrorActionImpl>
    implements _$$tnxErrorActionImplCopyWith<$Res> {
  __$$tnxErrorActionImplCopyWithImpl(
      _$tnxErrorActionImpl _value, $Res Function(_$tnxErrorActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendTransactionAction
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$tnxErrorActionImpl implements tnxErrorAction {
  const _$tnxErrorActionImpl();

  @override
  String toString() {
    return 'SendTransactionAction.tnxError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$tnxErrorActionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() tnxError,
    required TResult Function(int fee) feeCalculated,
    required TResult Function(String tnx) transactionSuccess,
  }) {
    return tnxError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? tnxError,
    TResult? Function(int fee)? feeCalculated,
    TResult? Function(String tnx)? transactionSuccess,
  }) {
    return tnxError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? tnxError,
    TResult Function(int fee)? feeCalculated,
    TResult Function(String tnx)? transactionSuccess,
    required TResult orElse(),
  }) {
    if (tnxError != null) {
      return tnxError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoneAction value) none,
    required TResult Function(tnxErrorAction value) tnxError,
    required TResult Function(FeeCalculatedAction value) feeCalculated,
    required TResult Function(TransactionSuccessAction value)
        transactionSuccess,
  }) {
    return tnxError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoneAction value)? none,
    TResult? Function(tnxErrorAction value)? tnxError,
    TResult? Function(FeeCalculatedAction value)? feeCalculated,
    TResult? Function(TransactionSuccessAction value)? transactionSuccess,
  }) {
    return tnxError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoneAction value)? none,
    TResult Function(tnxErrorAction value)? tnxError,
    TResult Function(FeeCalculatedAction value)? feeCalculated,
    TResult Function(TransactionSuccessAction value)? transactionSuccess,
    required TResult orElse(),
  }) {
    if (tnxError != null) {
      return tnxError(this);
    }
    return orElse();
  }
}

abstract class tnxErrorAction implements SendTransactionAction {
  const factory tnxErrorAction() = _$tnxErrorActionImpl;
}

/// @nodoc
abstract class _$$FeeCalculatedActionImplCopyWith<$Res> {
  factory _$$FeeCalculatedActionImplCopyWith(_$FeeCalculatedActionImpl value,
          $Res Function(_$FeeCalculatedActionImpl) then) =
      __$$FeeCalculatedActionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int fee});
}

/// @nodoc
class __$$FeeCalculatedActionImplCopyWithImpl<$Res>
    extends _$SendTransactionActionCopyWithImpl<$Res, _$FeeCalculatedActionImpl>
    implements _$$FeeCalculatedActionImplCopyWith<$Res> {
  __$$FeeCalculatedActionImplCopyWithImpl(_$FeeCalculatedActionImpl _value,
      $Res Function(_$FeeCalculatedActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendTransactionAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fee = null,
  }) {
    return _then(_$FeeCalculatedActionImpl(
      null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FeeCalculatedActionImpl implements FeeCalculatedAction {
  const _$FeeCalculatedActionImpl(this.fee);

  @override
  final int fee;

  @override
  String toString() {
    return 'SendTransactionAction.feeCalculated(fee: $fee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeeCalculatedActionImpl &&
            (identical(other.fee, fee) || other.fee == fee));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fee);

  /// Create a copy of SendTransactionAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeeCalculatedActionImplCopyWith<_$FeeCalculatedActionImpl> get copyWith =>
      __$$FeeCalculatedActionImplCopyWithImpl<_$FeeCalculatedActionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() tnxError,
    required TResult Function(int fee) feeCalculated,
    required TResult Function(String tnx) transactionSuccess,
  }) {
    return feeCalculated(fee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? tnxError,
    TResult? Function(int fee)? feeCalculated,
    TResult? Function(String tnx)? transactionSuccess,
  }) {
    return feeCalculated?.call(fee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? tnxError,
    TResult Function(int fee)? feeCalculated,
    TResult Function(String tnx)? transactionSuccess,
    required TResult orElse(),
  }) {
    if (feeCalculated != null) {
      return feeCalculated(fee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoneAction value) none,
    required TResult Function(tnxErrorAction value) tnxError,
    required TResult Function(FeeCalculatedAction value) feeCalculated,
    required TResult Function(TransactionSuccessAction value)
        transactionSuccess,
  }) {
    return feeCalculated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoneAction value)? none,
    TResult? Function(tnxErrorAction value)? tnxError,
    TResult? Function(FeeCalculatedAction value)? feeCalculated,
    TResult? Function(TransactionSuccessAction value)? transactionSuccess,
  }) {
    return feeCalculated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoneAction value)? none,
    TResult Function(tnxErrorAction value)? tnxError,
    TResult Function(FeeCalculatedAction value)? feeCalculated,
    TResult Function(TransactionSuccessAction value)? transactionSuccess,
    required TResult orElse(),
  }) {
    if (feeCalculated != null) {
      return feeCalculated(this);
    }
    return orElse();
  }
}

abstract class FeeCalculatedAction implements SendTransactionAction {
  const factory FeeCalculatedAction(final int fee) = _$FeeCalculatedActionImpl;

  int get fee;

  /// Create a copy of SendTransactionAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeeCalculatedActionImplCopyWith<_$FeeCalculatedActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionSuccessActionImplCopyWith<$Res> {
  factory _$$TransactionSuccessActionImplCopyWith(
          _$TransactionSuccessActionImpl value,
          $Res Function(_$TransactionSuccessActionImpl) then) =
      __$$TransactionSuccessActionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String tnx});
}

/// @nodoc
class __$$TransactionSuccessActionImplCopyWithImpl<$Res>
    extends _$SendTransactionActionCopyWithImpl<$Res,
        _$TransactionSuccessActionImpl>
    implements _$$TransactionSuccessActionImplCopyWith<$Res> {
  __$$TransactionSuccessActionImplCopyWithImpl(
      _$TransactionSuccessActionImpl _value,
      $Res Function(_$TransactionSuccessActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendTransactionAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tnx = null,
  }) {
    return _then(_$TransactionSuccessActionImpl(
      null == tnx
          ? _value.tnx
          : tnx // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TransactionSuccessActionImpl implements TransactionSuccessAction {
  const _$TransactionSuccessActionImpl(this.tnx);

  @override
  final String tnx;

  @override
  String toString() {
    return 'SendTransactionAction.transactionSuccess(tnx: $tnx)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionSuccessActionImpl &&
            (identical(other.tnx, tnx) || other.tnx == tnx));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tnx);

  /// Create a copy of SendTransactionAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionSuccessActionImplCopyWith<_$TransactionSuccessActionImpl>
      get copyWith => __$$TransactionSuccessActionImplCopyWithImpl<
          _$TransactionSuccessActionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() tnxError,
    required TResult Function(int fee) feeCalculated,
    required TResult Function(String tnx) transactionSuccess,
  }) {
    return transactionSuccess(tnx);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? tnxError,
    TResult? Function(int fee)? feeCalculated,
    TResult? Function(String tnx)? transactionSuccess,
  }) {
    return transactionSuccess?.call(tnx);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? tnxError,
    TResult Function(int fee)? feeCalculated,
    TResult Function(String tnx)? transactionSuccess,
    required TResult orElse(),
  }) {
    if (transactionSuccess != null) {
      return transactionSuccess(tnx);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoneAction value) none,
    required TResult Function(tnxErrorAction value) tnxError,
    required TResult Function(FeeCalculatedAction value) feeCalculated,
    required TResult Function(TransactionSuccessAction value)
        transactionSuccess,
  }) {
    return transactionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoneAction value)? none,
    TResult? Function(tnxErrorAction value)? tnxError,
    TResult? Function(FeeCalculatedAction value)? feeCalculated,
    TResult? Function(TransactionSuccessAction value)? transactionSuccess,
  }) {
    return transactionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoneAction value)? none,
    TResult Function(tnxErrorAction value)? tnxError,
    TResult Function(FeeCalculatedAction value)? feeCalculated,
    TResult Function(TransactionSuccessAction value)? transactionSuccess,
    required TResult orElse(),
  }) {
    if (transactionSuccess != null) {
      return transactionSuccess(this);
    }
    return orElse();
  }
}

abstract class TransactionSuccessAction implements SendTransactionAction {
  const factory TransactionSuccessAction(final String tnx) =
      _$TransactionSuccessActionImpl;

  String get tnx;

  /// Create a copy of SendTransactionAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionSuccessActionImplCopyWith<_$TransactionSuccessActionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
