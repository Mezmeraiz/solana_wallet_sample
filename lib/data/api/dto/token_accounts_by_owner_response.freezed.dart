// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_accounts_by_owner_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenAccountsByOwnerResponse _$TokenAccountsByOwnerResponseFromJson(
    Map<String, dynamic> json) {
  return _TokenAccountsByOwnerResponse.fromJson(json);
}

/// @nodoc
mixin _$TokenAccountsByOwnerResponse {
  String get contractAddress => throw _privateConstructorUsedError;
  BigInt get balance => throw _privateConstructorUsedError;
  int get decimals => throw _privateConstructorUsedError;

  /// Serializes this TokenAccountsByOwnerResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TokenAccountsByOwnerResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokenAccountsByOwnerResponseCopyWith<TokenAccountsByOwnerResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenAccountsByOwnerResponseCopyWith<$Res> {
  factory $TokenAccountsByOwnerResponseCopyWith(
          TokenAccountsByOwnerResponse value,
          $Res Function(TokenAccountsByOwnerResponse) then) =
      _$TokenAccountsByOwnerResponseCopyWithImpl<$Res,
          TokenAccountsByOwnerResponse>;
  @useResult
  $Res call({String contractAddress, BigInt balance, int decimals});
}

/// @nodoc
class _$TokenAccountsByOwnerResponseCopyWithImpl<$Res,
        $Val extends TokenAccountsByOwnerResponse>
    implements $TokenAccountsByOwnerResponseCopyWith<$Res> {
  _$TokenAccountsByOwnerResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenAccountsByOwnerResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contractAddress = null,
    Object? balance = null,
    Object? decimals = null,
  }) {
    return _then(_value.copyWith(
      contractAddress: null == contractAddress
          ? _value.contractAddress
          : contractAddress // ignore: cast_nullable_to_non_nullable
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
abstract class _$$TokenAccountsByOwnerResponseImplCopyWith<$Res>
    implements $TokenAccountsByOwnerResponseCopyWith<$Res> {
  factory _$$TokenAccountsByOwnerResponseImplCopyWith(
          _$TokenAccountsByOwnerResponseImpl value,
          $Res Function(_$TokenAccountsByOwnerResponseImpl) then) =
      __$$TokenAccountsByOwnerResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String contractAddress, BigInt balance, int decimals});
}

/// @nodoc
class __$$TokenAccountsByOwnerResponseImplCopyWithImpl<$Res>
    extends _$TokenAccountsByOwnerResponseCopyWithImpl<$Res,
        _$TokenAccountsByOwnerResponseImpl>
    implements _$$TokenAccountsByOwnerResponseImplCopyWith<$Res> {
  __$$TokenAccountsByOwnerResponseImplCopyWithImpl(
      _$TokenAccountsByOwnerResponseImpl _value,
      $Res Function(_$TokenAccountsByOwnerResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenAccountsByOwnerResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contractAddress = null,
    Object? balance = null,
    Object? decimals = null,
  }) {
    return _then(_$TokenAccountsByOwnerResponseImpl(
      contractAddress: null == contractAddress
          ? _value.contractAddress
          : contractAddress // ignore: cast_nullable_to_non_nullable
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
class _$TokenAccountsByOwnerResponseImpl
    implements _TokenAccountsByOwnerResponse {
  const _$TokenAccountsByOwnerResponseImpl(
      {required this.contractAddress,
      required this.balance,
      required this.decimals});

  factory _$TokenAccountsByOwnerResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TokenAccountsByOwnerResponseImplFromJson(json);

  @override
  final String contractAddress;
  @override
  final BigInt balance;
  @override
  final int decimals;

  @override
  String toString() {
    return 'TokenAccountsByOwnerResponse(contractAddress: $contractAddress, balance: $balance, decimals: $decimals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenAccountsByOwnerResponseImpl &&
            (identical(other.contractAddress, contractAddress) ||
                other.contractAddress == contractAddress) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, contractAddress, balance, decimals);

  /// Create a copy of TokenAccountsByOwnerResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenAccountsByOwnerResponseImplCopyWith<
          _$TokenAccountsByOwnerResponseImpl>
      get copyWith => __$$TokenAccountsByOwnerResponseImplCopyWithImpl<
          _$TokenAccountsByOwnerResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenAccountsByOwnerResponseImplToJson(
      this,
    );
  }
}

abstract class _TokenAccountsByOwnerResponse
    implements TokenAccountsByOwnerResponse {
  const factory _TokenAccountsByOwnerResponse(
      {required final String contractAddress,
      required final BigInt balance,
      required final int decimals}) = _$TokenAccountsByOwnerResponseImpl;

  factory _TokenAccountsByOwnerResponse.fromJson(Map<String, dynamic> json) =
      _$TokenAccountsByOwnerResponseImpl.fromJson;

  @override
  String get contractAddress;
  @override
  BigInt get balance;
  @override
  int get decimals;

  /// Create a copy of TokenAccountsByOwnerResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenAccountsByOwnerResponseImplCopyWith<
          _$TokenAccountsByOwnerResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
