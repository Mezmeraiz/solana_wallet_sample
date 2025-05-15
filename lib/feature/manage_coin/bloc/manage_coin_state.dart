part of 'manage_coin_bloc.dart';

@freezed
class ManageCoinState with _$ManageCoinState {
  const factory ManageCoinState({
    @Default([]) List<BaseCoinData> coins,
    @Default([]) List<BaseCoinData> initialCoins,
    @Default({}) Set<String> initialCoinIds,
    @Default({}) Set<String> activeCoinIds,
    @Default(0) int offset,
    @Default('') String query,
    @Default(ManageCoinLoadingStatus.idle) ManageCoinLoadingStatus loadingStatus,
  }) = _ManageCoinState;
}

enum ManageCoinLoadingStatus {
  idle,
  loading,
}
