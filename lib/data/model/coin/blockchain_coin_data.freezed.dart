// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blockchain_coin_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlockchainCoinData _$BlockchainCoinDataFromJson(Map<String, dynamic> json) {
  return _BlockchainCoinData.fromJson(json);
}

/// @nodoc
mixin _$BlockchainCoinData {
  String get id => throw _privateConstructorUsedError;
  BigInt get balance => throw _privateConstructorUsedError;
  int get decimals => throw _privateConstructorUsedError;

  /// Serializes this BlockchainCoinData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlockchainCoinData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlockchainCoinDataCopyWith<BlockchainCoinData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockchainCoinDataCopyWith<$Res> {
  factory $BlockchainCoinDataCopyWith(
          BlockchainCoinData value, $Res Function(BlockchainCoinData) then) =
      _$BlockchainCoinDataCopyWithImpl<$Res, BlockchainCoinData>;
  @useResult
  $Res call({String id, BigInt balance, int decimals});
}

/// @nodoc
class _$BlockchainCoinDataCopyWithImpl<$Res, $Val extends BlockchainCoinData>
    implements $BlockchainCoinDataCopyWith<$Res> {
  _$BlockchainCoinDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlockchainCoinData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? balance = null,
    Object? decimals = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as BigInt,
      decimals: null == decimals
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlockchainCoinDataImplCopyWith<$Res>
    implements $BlockchainCoinDataCopyWith<$Res> {
  factory _$$BlockchainCoinDataImplCopyWith(_$BlockchainCoinDataImpl value,
          $Res Function(_$BlockchainCoinDataImpl) then) =
      __$$BlockchainCoinDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, BigInt balance, int decimals});
}

/// @nodoc
class __$$BlockchainCoinDataImplCopyWithImpl<$Res>
    extends _$BlockchainCoinDataCopyWithImpl<$Res, _$BlockchainCoinDataImpl>
    implements _$$BlockchainCoinDataImplCopyWith<$Res> {
  __$$BlockchainCoinDataImplCopyWithImpl(_$BlockchainCoinDataImpl _value,
      $Res Function(_$BlockchainCoinDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlockchainCoinData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? balance = null,
    Object? decimals = null,
  }) {
    return _then(_$BlockchainCoinDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as BigInt,
      decimals: null == decimals
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlockchainCoinDataImpl extends _BlockchainCoinData {
  const _$BlockchainCoinDataImpl(
      {required this.id, required this.balance, required this.decimals})
      : super._();

  factory _$BlockchainCoinDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlockchainCoinDataImplFromJson(json);

  @override
  final String id;
  @override
  final BigInt balance;
  @override
  final int decimals;

  @override
  String toString() {
    return 'BlockchainCoinData(id: $id, balance: $balance, decimals: $decimals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockchainCoinDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, balance, decimals);

  /// Create a copy of BlockchainCoinData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlockchainCoinDataImplCopyWith<_$BlockchainCoinDataImpl> get copyWith =>
      __$$BlockchainCoinDataImplCopyWithImpl<_$BlockchainCoinDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlockchainCoinDataImplToJson(
      this,
    );
  }
}

abstract class _BlockchainCoinData extends BlockchainCoinData {
  const factory _BlockchainCoinData(
      {required final String id,
      required final BigInt balance,
      required final int decimals}) = _$BlockchainCoinDataImpl;
  const _BlockchainCoinData._() : super._();

  factory _BlockchainCoinData.fromJson(Map<String, dynamic> json) =
      _$BlockchainCoinDataImpl.fromJson;

  @override
  String get id;
  @override
  BigInt get balance;
  @override
  int get decimals;

  /// Create a copy of BlockchainCoinData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlockchainCoinDataImplCopyWith<_$BlockchainCoinDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
