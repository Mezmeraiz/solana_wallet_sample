// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coin_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoinInfoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(BlockchainCoinData? data) blockchainDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(BlockchainCoinData? data)? blockchainDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(BlockchainCoinData? data)? blockchainDataChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_BlockchainDataChanged value)
        blockchainDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_BlockchainDataChanged value)? blockchainDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_BlockchainDataChanged value)? blockchainDataChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinInfoEventCopyWith<$Res> {
  factory $CoinInfoEventCopyWith(
          CoinInfoEvent value, $Res Function(CoinInfoEvent) then) =
      _$CoinInfoEventCopyWithImpl<$Res, CoinInfoEvent>;
}

/// @nodoc
class _$CoinInfoEventCopyWithImpl<$Res, $Val extends CoinInfoEvent>
    implements $CoinInfoEventCopyWith<$Res> {
  _$CoinInfoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoinInfoEvent
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
    extends _$CoinInfoEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoinInfoEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'CoinInfoEvent.init()';
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
    required TResult Function(BlockchainCoinData? data) blockchainDataChanged,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(BlockchainCoinData? data)? blockchainDataChanged,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(BlockchainCoinData? data)? blockchainDataChanged,
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
    required TResult Function(_BlockchainDataChanged value)
        blockchainDataChanged,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_BlockchainDataChanged value)? blockchainDataChanged,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_BlockchainDataChanged value)? blockchainDataChanged,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements CoinInfoEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$BlockchainDataChangedImplCopyWith<$Res> {
  factory _$$BlockchainDataChangedImplCopyWith(
          _$BlockchainDataChangedImpl value,
          $Res Function(_$BlockchainDataChangedImpl) then) =
      __$$BlockchainDataChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BlockchainCoinData? data});

  $BlockchainCoinDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BlockchainDataChangedImplCopyWithImpl<$Res>
    extends _$CoinInfoEventCopyWithImpl<$Res, _$BlockchainDataChangedImpl>
    implements _$$BlockchainDataChangedImplCopyWith<$Res> {
  __$$BlockchainDataChangedImplCopyWithImpl(_$BlockchainDataChangedImpl _value,
      $Res Function(_$BlockchainDataChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoinInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$BlockchainDataChangedImpl(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BlockchainCoinData?,
    ));
  }

  /// Create a copy of CoinInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlockchainCoinDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BlockchainCoinDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$BlockchainDataChangedImpl implements _BlockchainDataChanged {
  const _$BlockchainDataChangedImpl(this.data);

  @override
  final BlockchainCoinData? data;

  @override
  String toString() {
    return 'CoinInfoEvent.blockchainDataChanged(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockchainDataChangedImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of CoinInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlockchainDataChangedImplCopyWith<_$BlockchainDataChangedImpl>
      get copyWith => __$$BlockchainDataChangedImplCopyWithImpl<
          _$BlockchainDataChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(BlockchainCoinData? data) blockchainDataChanged,
  }) {
    return blockchainDataChanged(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(BlockchainCoinData? data)? blockchainDataChanged,
  }) {
    return blockchainDataChanged?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(BlockchainCoinData? data)? blockchainDataChanged,
    required TResult orElse(),
  }) {
    if (blockchainDataChanged != null) {
      return blockchainDataChanged(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_BlockchainDataChanged value)
        blockchainDataChanged,
  }) {
    return blockchainDataChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_BlockchainDataChanged value)? blockchainDataChanged,
  }) {
    return blockchainDataChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_BlockchainDataChanged value)? blockchainDataChanged,
    required TResult orElse(),
  }) {
    if (blockchainDataChanged != null) {
      return blockchainDataChanged(this);
    }
    return orElse();
  }
}

abstract class _BlockchainDataChanged implements CoinInfoEvent {
  const factory _BlockchainDataChanged(final BlockchainCoinData? data) =
      _$BlockchainDataChangedImpl;

  BlockchainCoinData? get data;

  /// Create a copy of CoinInfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlockchainDataChangedImplCopyWith<_$BlockchainDataChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CoinInfoState {
  String get coinId => throw _privateConstructorUsedError;
  BaseCoinData get baseCoinData => throw _privateConstructorUsedError;
  BlockchainCoinData? get blockchainCoinData =>
      throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  CoinInfoLoadingStatus get loadingStatus => throw _privateConstructorUsedError;

  /// Create a copy of CoinInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoinInfoStateCopyWith<CoinInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinInfoStateCopyWith<$Res> {
  factory $CoinInfoStateCopyWith(
          CoinInfoState value, $Res Function(CoinInfoState) then) =
      _$CoinInfoStateCopyWithImpl<$Res, CoinInfoState>;
  @useResult
  $Res call(
      {String coinId,
      BaseCoinData baseCoinData,
      BlockchainCoinData? blockchainCoinData,
      String address,
      CoinInfoLoadingStatus loadingStatus});

  $BaseCoinDataCopyWith<$Res> get baseCoinData;
  $BlockchainCoinDataCopyWith<$Res>? get blockchainCoinData;
}

/// @nodoc
class _$CoinInfoStateCopyWithImpl<$Res, $Val extends CoinInfoState>
    implements $CoinInfoStateCopyWith<$Res> {
  _$CoinInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoinInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coinId = null,
    Object? baseCoinData = null,
    Object? blockchainCoinData = freezed,
    Object? address = null,
    Object? loadingStatus = null,
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
      blockchainCoinData: freezed == blockchainCoinData
          ? _value.blockchainCoinData
          : blockchainCoinData // ignore: cast_nullable_to_non_nullable
              as BlockchainCoinData?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as CoinInfoLoadingStatus,
    ) as $Val);
  }

  /// Create a copy of CoinInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseCoinDataCopyWith<$Res> get baseCoinData {
    return $BaseCoinDataCopyWith<$Res>(_value.baseCoinData, (value) {
      return _then(_value.copyWith(baseCoinData: value) as $Val);
    });
  }

  /// Create a copy of CoinInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlockchainCoinDataCopyWith<$Res>? get blockchainCoinData {
    if (_value.blockchainCoinData == null) {
      return null;
    }

    return $BlockchainCoinDataCopyWith<$Res>(_value.blockchainCoinData!,
        (value) {
      return _then(_value.copyWith(blockchainCoinData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoinInfoStateImplCopyWith<$Res>
    implements $CoinInfoStateCopyWith<$Res> {
  factory _$$CoinInfoStateImplCopyWith(
          _$CoinInfoStateImpl value, $Res Function(_$CoinInfoStateImpl) then) =
      __$$CoinInfoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String coinId,
      BaseCoinData baseCoinData,
      BlockchainCoinData? blockchainCoinData,
      String address,
      CoinInfoLoadingStatus loadingStatus});

  @override
  $BaseCoinDataCopyWith<$Res> get baseCoinData;
  @override
  $BlockchainCoinDataCopyWith<$Res>? get blockchainCoinData;
}

/// @nodoc
class __$$CoinInfoStateImplCopyWithImpl<$Res>
    extends _$CoinInfoStateCopyWithImpl<$Res, _$CoinInfoStateImpl>
    implements _$$CoinInfoStateImplCopyWith<$Res> {
  __$$CoinInfoStateImplCopyWithImpl(
      _$CoinInfoStateImpl _value, $Res Function(_$CoinInfoStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoinInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coinId = null,
    Object? baseCoinData = null,
    Object? blockchainCoinData = freezed,
    Object? address = null,
    Object? loadingStatus = null,
  }) {
    return _then(_$CoinInfoStateImpl(
      coinId: null == coinId
          ? _value.coinId
          : coinId // ignore: cast_nullable_to_non_nullable
              as String,
      baseCoinData: null == baseCoinData
          ? _value.baseCoinData
          : baseCoinData // ignore: cast_nullable_to_non_nullable
              as BaseCoinData,
      blockchainCoinData: freezed == blockchainCoinData
          ? _value.blockchainCoinData
          : blockchainCoinData // ignore: cast_nullable_to_non_nullable
              as BlockchainCoinData?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as CoinInfoLoadingStatus,
    ));
  }
}

/// @nodoc

class _$CoinInfoStateImpl implements _CoinInfoState {
  const _$CoinInfoStateImpl(
      {required this.coinId,
      required this.baseCoinData,
      this.blockchainCoinData,
      this.address = '',
      this.loadingStatus = CoinInfoLoadingStatus.loading});

  @override
  final String coinId;
  @override
  final BaseCoinData baseCoinData;
  @override
  final BlockchainCoinData? blockchainCoinData;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final CoinInfoLoadingStatus loadingStatus;

  @override
  String toString() {
    return 'CoinInfoState(coinId: $coinId, baseCoinData: $baseCoinData, blockchainCoinData: $blockchainCoinData, address: $address, loadingStatus: $loadingStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoinInfoStateImpl &&
            (identical(other.coinId, coinId) || other.coinId == coinId) &&
            (identical(other.baseCoinData, baseCoinData) ||
                other.baseCoinData == baseCoinData) &&
            (identical(other.blockchainCoinData, blockchainCoinData) ||
                other.blockchainCoinData == blockchainCoinData) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.loadingStatus, loadingStatus) ||
                other.loadingStatus == loadingStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coinId, baseCoinData,
      blockchainCoinData, address, loadingStatus);

  /// Create a copy of CoinInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoinInfoStateImplCopyWith<_$CoinInfoStateImpl> get copyWith =>
      __$$CoinInfoStateImplCopyWithImpl<_$CoinInfoStateImpl>(this, _$identity);
}

abstract class _CoinInfoState implements CoinInfoState {
  const factory _CoinInfoState(
      {required final String coinId,
      required final BaseCoinData baseCoinData,
      final BlockchainCoinData? blockchainCoinData,
      final String address,
      final CoinInfoLoadingStatus loadingStatus}) = _$CoinInfoStateImpl;

  @override
  String get coinId;
  @override
  BaseCoinData get baseCoinData;
  @override
  BlockchainCoinData? get blockchainCoinData;
  @override
  String get address;
  @override
  CoinInfoLoadingStatus get loadingStatus;

  /// Create a copy of CoinInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoinInfoStateImplCopyWith<_$CoinInfoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
