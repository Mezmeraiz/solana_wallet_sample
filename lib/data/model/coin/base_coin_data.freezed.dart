// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_coin_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseCoinData _$BaseCoinDataFromJson(Map<String, dynamic> json) {
  return _BaseCoinData.fromJson(json);
}

/// @nodoc
mixin _$BaseCoinData {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get ticker => throw _privateConstructorUsedError;
  String? get iconUrl => throw _privateConstructorUsedError;
  String? get contractAddress => throw _privateConstructorUsedError;
  CoinType get type => throw _privateConstructorUsedError;

  /// Serializes this BaseCoinData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseCoinData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseCoinDataCopyWith<BaseCoinData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseCoinDataCopyWith<$Res> {
  factory $BaseCoinDataCopyWith(
          BaseCoinData value, $Res Function(BaseCoinData) then) =
      _$BaseCoinDataCopyWithImpl<$Res, BaseCoinData>;
  @useResult
  $Res call(
      {String id,
      String name,
      String ticker,
      String? iconUrl,
      String? contractAddress,
      CoinType type});
}

/// @nodoc
class _$BaseCoinDataCopyWithImpl<$Res, $Val extends BaseCoinData>
    implements $BaseCoinDataCopyWith<$Res> {
  _$BaseCoinDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseCoinData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? ticker = null,
    Object? iconUrl = freezed,
    Object? contractAddress = freezed,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ticker: null == ticker
          ? _value.ticker
          : ticker // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: freezed == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      contractAddress: freezed == contractAddress
          ? _value.contractAddress
          : contractAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CoinType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseCoinDataImplCopyWith<$Res>
    implements $BaseCoinDataCopyWith<$Res> {
  factory _$$BaseCoinDataImplCopyWith(
          _$BaseCoinDataImpl value, $Res Function(_$BaseCoinDataImpl) then) =
      __$$BaseCoinDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String ticker,
      String? iconUrl,
      String? contractAddress,
      CoinType type});
}

/// @nodoc
class __$$BaseCoinDataImplCopyWithImpl<$Res>
    extends _$BaseCoinDataCopyWithImpl<$Res, _$BaseCoinDataImpl>
    implements _$$BaseCoinDataImplCopyWith<$Res> {
  __$$BaseCoinDataImplCopyWithImpl(
      _$BaseCoinDataImpl _value, $Res Function(_$BaseCoinDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseCoinData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? ticker = null,
    Object? iconUrl = freezed,
    Object? contractAddress = freezed,
    Object? type = null,
  }) {
    return _then(_$BaseCoinDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ticker: null == ticker
          ? _value.ticker
          : ticker // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: freezed == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      contractAddress: freezed == contractAddress
          ? _value.contractAddress
          : contractAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CoinType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseCoinDataImpl extends _BaseCoinData {
  const _$BaseCoinDataImpl(
      {required this.id,
      required this.name,
      required this.ticker,
      this.iconUrl,
      this.contractAddress,
      required this.type})
      : super._();

  factory _$BaseCoinDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseCoinDataImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String ticker;
  @override
  final String? iconUrl;
  @override
  final String? contractAddress;
  @override
  final CoinType type;

  @override
  String toString() {
    return 'BaseCoinData(id: $id, name: $name, ticker: $ticker, iconUrl: $iconUrl, contractAddress: $contractAddress, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseCoinDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.ticker, ticker) || other.ticker == ticker) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.contractAddress, contractAddress) ||
                other.contractAddress == contractAddress) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, ticker, iconUrl, contractAddress, type);

  /// Create a copy of BaseCoinData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseCoinDataImplCopyWith<_$BaseCoinDataImpl> get copyWith =>
      __$$BaseCoinDataImplCopyWithImpl<_$BaseCoinDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseCoinDataImplToJson(
      this,
    );
  }
}

abstract class _BaseCoinData extends BaseCoinData {
  const factory _BaseCoinData(
      {required final String id,
      required final String name,
      required final String ticker,
      final String? iconUrl,
      final String? contractAddress,
      required final CoinType type}) = _$BaseCoinDataImpl;
  const _BaseCoinData._() : super._();

  factory _BaseCoinData.fromJson(Map<String, dynamic> json) =
      _$BaseCoinDataImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get ticker;
  @override
  String? get iconUrl;
  @override
  String? get contractAddress;
  @override
  CoinType get type;

  /// Create a copy of BaseCoinData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseCoinDataImplCopyWith<_$BaseCoinDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
