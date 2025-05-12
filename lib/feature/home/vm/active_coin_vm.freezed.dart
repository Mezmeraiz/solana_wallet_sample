// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'active_coin_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ActiveCoinVM {
  String get id => throw _privateConstructorUsedError;
  String get ticker => throw _privateConstructorUsedError;
  CoinType get type => throw _privateConstructorUsedError;
  String? get iconUrl => throw _privateConstructorUsedError;
  String? get contractAddress => throw _privateConstructorUsedError;
  BigInt? get balance => throw _privateConstructorUsedError;
  int? get decimals => throw _privateConstructorUsedError;

  /// Create a copy of ActiveCoinVM
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActiveCoinVMCopyWith<ActiveCoinVM> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveCoinVMCopyWith<$Res> {
  factory $ActiveCoinVMCopyWith(
          ActiveCoinVM value, $Res Function(ActiveCoinVM) then) =
      _$ActiveCoinVMCopyWithImpl<$Res, ActiveCoinVM>;
  @useResult
  $Res call(
      {String id,
      String ticker,
      CoinType type,
      String? iconUrl,
      String? contractAddress,
      BigInt? balance,
      int? decimals});
}

/// @nodoc
class _$ActiveCoinVMCopyWithImpl<$Res, $Val extends ActiveCoinVM>
    implements $ActiveCoinVMCopyWith<$Res> {
  _$ActiveCoinVMCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActiveCoinVM
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ticker = null,
    Object? type = null,
    Object? iconUrl = freezed,
    Object? contractAddress = freezed,
    Object? balance = freezed,
    Object? decimals = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ticker: null == ticker
          ? _value.ticker
          : ticker // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CoinType,
      iconUrl: freezed == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      contractAddress: freezed == contractAddress
          ? _value.contractAddress
          : contractAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      decimals: freezed == decimals
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActiveCoinVMImplCopyWith<$Res>
    implements $ActiveCoinVMCopyWith<$Res> {
  factory _$$ActiveCoinVMImplCopyWith(
          _$ActiveCoinVMImpl value, $Res Function(_$ActiveCoinVMImpl) then) =
      __$$ActiveCoinVMImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String ticker,
      CoinType type,
      String? iconUrl,
      String? contractAddress,
      BigInt? balance,
      int? decimals});
}

/// @nodoc
class __$$ActiveCoinVMImplCopyWithImpl<$Res>
    extends _$ActiveCoinVMCopyWithImpl<$Res, _$ActiveCoinVMImpl>
    implements _$$ActiveCoinVMImplCopyWith<$Res> {
  __$$ActiveCoinVMImplCopyWithImpl(
      _$ActiveCoinVMImpl _value, $Res Function(_$ActiveCoinVMImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActiveCoinVM
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ticker = null,
    Object? type = null,
    Object? iconUrl = freezed,
    Object? contractAddress = freezed,
    Object? balance = freezed,
    Object? decimals = freezed,
  }) {
    return _then(_$ActiveCoinVMImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ticker: null == ticker
          ? _value.ticker
          : ticker // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CoinType,
      iconUrl: freezed == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      contractAddress: freezed == contractAddress
          ? _value.contractAddress
          : contractAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      decimals: freezed == decimals
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ActiveCoinVMImpl implements _ActiveCoinVM {
  const _$ActiveCoinVMImpl(
      {required this.id,
      required this.ticker,
      required this.type,
      this.iconUrl,
      this.contractAddress,
      this.balance,
      this.decimals});

  @override
  final String id;
  @override
  final String ticker;
  @override
  final CoinType type;
  @override
  final String? iconUrl;
  @override
  final String? contractAddress;
  @override
  final BigInt? balance;
  @override
  final int? decimals;

  @override
  String toString() {
    return 'ActiveCoinVM(id: $id, ticker: $ticker, type: $type, iconUrl: $iconUrl, contractAddress: $contractAddress, balance: $balance, decimals: $decimals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActiveCoinVMImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ticker, ticker) || other.ticker == ticker) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.contractAddress, contractAddress) ||
                other.contractAddress == contractAddress) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, ticker, type, iconUrl,
      contractAddress, balance, decimals);

  /// Create a copy of ActiveCoinVM
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActiveCoinVMImplCopyWith<_$ActiveCoinVMImpl> get copyWith =>
      __$$ActiveCoinVMImplCopyWithImpl<_$ActiveCoinVMImpl>(this, _$identity);
}

abstract class _ActiveCoinVM implements ActiveCoinVM {
  const factory _ActiveCoinVM(
      {required final String id,
      required final String ticker,
      required final CoinType type,
      final String? iconUrl,
      final String? contractAddress,
      final BigInt? balance,
      final int? decimals}) = _$ActiveCoinVMImpl;

  @override
  String get id;
  @override
  String get ticker;
  @override
  CoinType get type;
  @override
  String? get iconUrl;
  @override
  String? get contractAddress;
  @override
  BigInt? get balance;
  @override
  int? get decimals;

  /// Create a copy of ActiveCoinVM
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActiveCoinVMImplCopyWith<_$ActiveCoinVMImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
