// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coin_list_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoinListData _$CoinListDataFromJson(Map<String, dynamic> json) {
  return _CoinListData.fromJson(json);
}

/// @nodoc
mixin _$CoinListData {
  String get id => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Map<String, String> get platforms => throw _privateConstructorUsedError;

  /// Serializes this CoinListData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoinListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoinListDataCopyWith<CoinListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinListDataCopyWith<$Res> {
  factory $CoinListDataCopyWith(
          CoinListData value, $Res Function(CoinListData) then) =
      _$CoinListDataCopyWithImpl<$Res, CoinListData>;
  @useResult
  $Res call(
      {String id, String symbol, String name, Map<String, String> platforms});
}

/// @nodoc
class _$CoinListDataCopyWithImpl<$Res, $Val extends CoinListData>
    implements $CoinListDataCopyWith<$Res> {
  _$CoinListDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoinListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? name = null,
    Object? platforms = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      platforms: null == platforms
          ? _value.platforms
          : platforms // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoinListDataImplCopyWith<$Res>
    implements $CoinListDataCopyWith<$Res> {
  factory _$$CoinListDataImplCopyWith(
          _$CoinListDataImpl value, $Res Function(_$CoinListDataImpl) then) =
      __$$CoinListDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String symbol, String name, Map<String, String> platforms});
}

/// @nodoc
class __$$CoinListDataImplCopyWithImpl<$Res>
    extends _$CoinListDataCopyWithImpl<$Res, _$CoinListDataImpl>
    implements _$$CoinListDataImplCopyWith<$Res> {
  __$$CoinListDataImplCopyWithImpl(
      _$CoinListDataImpl _value, $Res Function(_$CoinListDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoinListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? name = null,
    Object? platforms = null,
  }) {
    return _then(_$CoinListDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      platforms: null == platforms
          ? _value._platforms
          : platforms // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoinListDataImpl implements _CoinListData {
  const _$CoinListDataImpl(
      {required this.id,
      required this.symbol,
      required this.name,
      required final Map<String, String> platforms})
      : _platforms = platforms;

  factory _$CoinListDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoinListDataImplFromJson(json);

  @override
  final String id;
  @override
  final String symbol;
  @override
  final String name;
  final Map<String, String> _platforms;
  @override
  Map<String, String> get platforms {
    if (_platforms is EqualUnmodifiableMapView) return _platforms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_platforms);
  }

  @override
  String toString() {
    return 'CoinListData(id: $id, symbol: $symbol, name: $name, platforms: $platforms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoinListDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._platforms, _platforms));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, symbol, name,
      const DeepCollectionEquality().hash(_platforms));

  /// Create a copy of CoinListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoinListDataImplCopyWith<_$CoinListDataImpl> get copyWith =>
      __$$CoinListDataImplCopyWithImpl<_$CoinListDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoinListDataImplToJson(
      this,
    );
  }
}

abstract class _CoinListData implements CoinListData {
  const factory _CoinListData(
      {required final String id,
      required final String symbol,
      required final String name,
      required final Map<String, String> platforms}) = _$CoinListDataImpl;

  factory _CoinListData.fromJson(Map<String, dynamic> json) =
      _$CoinListDataImpl.fromJson;

  @override
  String get id;
  @override
  String get symbol;
  @override
  String get name;
  @override
  Map<String, String> get platforms;

  /// Create a copy of CoinListData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoinListDataImplCopyWith<_$CoinListDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
