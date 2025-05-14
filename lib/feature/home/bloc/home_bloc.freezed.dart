// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pin) init,
    required TResult Function(
            List<BlockchainCoinData> blockchainData, Set<String> activeCoinIds)
        dataChanged,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pin)? init,
    TResult? Function(
            List<BlockchainCoinData> blockchainData, Set<String> activeCoinIds)?
        dataChanged,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pin)? init,
    TResult Function(
            List<BlockchainCoinData> blockchainData, Set<String> activeCoinIds)?
        dataChanged,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_DataChanged value) dataChanged,
    required TResult Function(_Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_DataChanged value)? dataChanged,
    TResult? Function(_Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_DataChanged value)? dataChanged,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String pin});
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = null,
  }) {
    return _then(_$InitImpl(
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl({required this.pin});

  @override
  final String pin;

  @override
  String toString() {
    return 'HomeEvent.init(pin: $pin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitImpl &&
            (identical(other.pin, pin) || other.pin == pin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pin);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      __$$InitImplCopyWithImpl<_$InitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pin) init,
    required TResult Function(
            List<BlockchainCoinData> blockchainData, Set<String> activeCoinIds)
        dataChanged,
    required TResult Function() logout,
  }) {
    return init(pin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pin)? init,
    TResult? Function(
            List<BlockchainCoinData> blockchainData, Set<String> activeCoinIds)?
        dataChanged,
    TResult? Function()? logout,
  }) {
    return init?.call(pin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pin)? init,
    TResult Function(
            List<BlockchainCoinData> blockchainData, Set<String> activeCoinIds)?
        dataChanged,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(pin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_DataChanged value) dataChanged,
    required TResult Function(_Logout value) logout,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_DataChanged value)? dataChanged,
    TResult? Function(_Logout value)? logout,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_DataChanged value)? dataChanged,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements HomeEvent {
  const factory _Init({required final String pin}) = _$InitImpl;

  String get pin;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DataChangedImplCopyWith<$Res> {
  factory _$$DataChangedImplCopyWith(
          _$DataChangedImpl value, $Res Function(_$DataChangedImpl) then) =
      __$$DataChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<BlockchainCoinData> blockchainData, Set<String> activeCoinIds});
}

/// @nodoc
class __$$DataChangedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$DataChangedImpl>
    implements _$$DataChangedImplCopyWith<$Res> {
  __$$DataChangedImplCopyWithImpl(
      _$DataChangedImpl _value, $Res Function(_$DataChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blockchainData = null,
    Object? activeCoinIds = null,
  }) {
    return _then(_$DataChangedImpl(
      blockchainData: null == blockchainData
          ? _value._blockchainData
          : blockchainData // ignore: cast_nullable_to_non_nullable
              as List<BlockchainCoinData>,
      activeCoinIds: null == activeCoinIds
          ? _value._activeCoinIds
          : activeCoinIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc

class _$DataChangedImpl implements _DataChanged {
  const _$DataChangedImpl(
      {required final List<BlockchainCoinData> blockchainData,
      required final Set<String> activeCoinIds})
      : _blockchainData = blockchainData,
        _activeCoinIds = activeCoinIds;

  final List<BlockchainCoinData> _blockchainData;
  @override
  List<BlockchainCoinData> get blockchainData {
    if (_blockchainData is EqualUnmodifiableListView) return _blockchainData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blockchainData);
  }

  final Set<String> _activeCoinIds;
  @override
  Set<String> get activeCoinIds {
    if (_activeCoinIds is EqualUnmodifiableSetView) return _activeCoinIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_activeCoinIds);
  }

  @override
  String toString() {
    return 'HomeEvent.dataChanged(blockchainData: $blockchainData, activeCoinIds: $activeCoinIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataChangedImpl &&
            const DeepCollectionEquality()
                .equals(other._blockchainData, _blockchainData) &&
            const DeepCollectionEquality()
                .equals(other._activeCoinIds, _activeCoinIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_blockchainData),
      const DeepCollectionEquality().hash(_activeCoinIds));

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataChangedImplCopyWith<_$DataChangedImpl> get copyWith =>
      __$$DataChangedImplCopyWithImpl<_$DataChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pin) init,
    required TResult Function(
            List<BlockchainCoinData> blockchainData, Set<String> activeCoinIds)
        dataChanged,
    required TResult Function() logout,
  }) {
    return dataChanged(blockchainData, activeCoinIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pin)? init,
    TResult? Function(
            List<BlockchainCoinData> blockchainData, Set<String> activeCoinIds)?
        dataChanged,
    TResult? Function()? logout,
  }) {
    return dataChanged?.call(blockchainData, activeCoinIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pin)? init,
    TResult Function(
            List<BlockchainCoinData> blockchainData, Set<String> activeCoinIds)?
        dataChanged,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (dataChanged != null) {
      return dataChanged(blockchainData, activeCoinIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_DataChanged value) dataChanged,
    required TResult Function(_Logout value) logout,
  }) {
    return dataChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_DataChanged value)? dataChanged,
    TResult? Function(_Logout value)? logout,
  }) {
    return dataChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_DataChanged value)? dataChanged,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (dataChanged != null) {
      return dataChanged(this);
    }
    return orElse();
  }
}

abstract class _DataChanged implements HomeEvent {
  const factory _DataChanged(
      {required final List<BlockchainCoinData> blockchainData,
      required final Set<String> activeCoinIds}) = _$DataChangedImpl;

  List<BlockchainCoinData> get blockchainData;
  Set<String> get activeCoinIds;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataChangedImplCopyWith<_$DataChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutImpl implements _Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'HomeEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pin) init,
    required TResult Function(
            List<BlockchainCoinData> blockchainData, Set<String> activeCoinIds)
        dataChanged,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pin)? init,
    TResult? Function(
            List<BlockchainCoinData> blockchainData, Set<String> activeCoinIds)?
        dataChanged,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pin)? init,
    TResult Function(
            List<BlockchainCoinData> blockchainData, Set<String> activeCoinIds)?
        dataChanged,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_DataChanged value) dataChanged,
    required TResult Function(_Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_DataChanged value)? dataChanged,
    TResult? Function(_Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_DataChanged value)? dataChanged,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements HomeEvent {
  const factory _Logout() = _$LogoutImpl;
}

/// @nodoc
mixin _$HomeState {
  List<ActiveCoinVM> get activeCoins => throw _privateConstructorUsedError;
  ProgressStatus get progressStatus => throw _privateConstructorUsedError;
  HomeAction get action => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {List<ActiveCoinVM> activeCoins,
      ProgressStatus progressStatus,
      HomeAction action});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeCoins = null,
    Object? progressStatus = null,
    Object? action = null,
  }) {
    return _then(_value.copyWith(
      activeCoins: null == activeCoins
          ? _value.activeCoins
          : activeCoins // ignore: cast_nullable_to_non_nullable
              as List<ActiveCoinVM>,
      progressStatus: null == progressStatus
          ? _value.progressStatus
          : progressStatus // ignore: cast_nullable_to_non_nullable
              as ProgressStatus,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as HomeAction,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ActiveCoinVM> activeCoins,
      ProgressStatus progressStatus,
      HomeAction action});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeCoins = null,
    Object? progressStatus = null,
    Object? action = null,
  }) {
    return _then(_$HomeStateImpl(
      activeCoins: null == activeCoins
          ? _value._activeCoins
          : activeCoins // ignore: cast_nullable_to_non_nullable
              as List<ActiveCoinVM>,
      progressStatus: null == progressStatus
          ? _value.progressStatus
          : progressStatus // ignore: cast_nullable_to_non_nullable
              as ProgressStatus,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as HomeAction,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {final List<ActiveCoinVM> activeCoins = const [],
      this.progressStatus = ProgressStatus.idle,
      this.action = HomeAction.none})
      : _activeCoins = activeCoins;

  final List<ActiveCoinVM> _activeCoins;
  @override
  @JsonKey()
  List<ActiveCoinVM> get activeCoins {
    if (_activeCoins is EqualUnmodifiableListView) return _activeCoins;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeCoins);
  }

  @override
  @JsonKey()
  final ProgressStatus progressStatus;
  @override
  @JsonKey()
  final HomeAction action;

  @override
  String toString() {
    return 'HomeState(activeCoins: $activeCoins, progressStatus: $progressStatus, action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            const DeepCollectionEquality()
                .equals(other._activeCoins, _activeCoins) &&
            (identical(other.progressStatus, progressStatus) ||
                other.progressStatus == progressStatus) &&
            (identical(other.action, action) || other.action == action));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_activeCoins),
      progressStatus,
      action);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final List<ActiveCoinVM> activeCoins,
      final ProgressStatus progressStatus,
      final HomeAction action}) = _$HomeStateImpl;

  @override
  List<ActiveCoinVM> get activeCoins;
  @override
  ProgressStatus get progressStatus;
  @override
  HomeAction get action;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
