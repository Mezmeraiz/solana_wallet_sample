// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'icon_coin_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IconCoinData _$IconCoinDataFromJson(Map<String, dynamic> json) {
  return _IconCoinData.fromJson(json);
}

/// @nodoc
mixin _$IconCoinData {
  String get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  /// Serializes this IconCoinData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IconCoinData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IconCoinDataCopyWith<IconCoinData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IconCoinDataCopyWith<$Res> {
  factory $IconCoinDataCopyWith(
          IconCoinData value, $Res Function(IconCoinData) then) =
      _$IconCoinDataCopyWithImpl<$Res, IconCoinData>;
  @useResult
  $Res call({String id, String image});
}

/// @nodoc
class _$IconCoinDataCopyWithImpl<$Res, $Val extends IconCoinData>
    implements $IconCoinDataCopyWith<$Res> {
  _$IconCoinDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IconCoinData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IconCoinDataImplCopyWith<$Res>
    implements $IconCoinDataCopyWith<$Res> {
  factory _$$IconCoinDataImplCopyWith(
          _$IconCoinDataImpl value, $Res Function(_$IconCoinDataImpl) then) =
      __$$IconCoinDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String image});
}

/// @nodoc
class __$$IconCoinDataImplCopyWithImpl<$Res>
    extends _$IconCoinDataCopyWithImpl<$Res, _$IconCoinDataImpl>
    implements _$$IconCoinDataImplCopyWith<$Res> {
  __$$IconCoinDataImplCopyWithImpl(
      _$IconCoinDataImpl _value, $Res Function(_$IconCoinDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of IconCoinData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
  }) {
    return _then(_$IconCoinDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IconCoinDataImpl implements _IconCoinData {
  const _$IconCoinDataImpl({required this.id, required this.image});

  factory _$IconCoinDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$IconCoinDataImplFromJson(json);

  @override
  final String id;
  @override
  final String image;

  @override
  String toString() {
    return 'IconCoinData(id: $id, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IconCoinDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, image);

  /// Create a copy of IconCoinData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IconCoinDataImplCopyWith<_$IconCoinDataImpl> get copyWith =>
      __$$IconCoinDataImplCopyWithImpl<_$IconCoinDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IconCoinDataImplToJson(
      this,
    );
  }
}

abstract class _IconCoinData implements IconCoinData {
  const factory _IconCoinData(
      {required final String id,
      required final String image}) = _$IconCoinDataImpl;

  factory _IconCoinData.fromJson(Map<String, dynamic> json) =
      _$IconCoinDataImpl.fromJson;

  @override
  String get id;
  @override
  String get image;

  /// Create a copy of IconCoinData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IconCoinDataImplCopyWith<_$IconCoinDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
