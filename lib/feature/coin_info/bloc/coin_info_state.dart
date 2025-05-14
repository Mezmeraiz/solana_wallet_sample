part of 'coin_info_bloc.dart';

@freezed
class CoinInfoState with _$CoinInfoState {
  const factory CoinInfoState({
    required String coinId,
    required BaseCoinData baseCoinData,
    BlockchainCoinData? blockchainCoinData,
    @Default('') String address,
    @Default(CoinInfoLoadingStatus.loading) CoinInfoLoadingStatus loadingStatus,
  }) = _CoinInfoState;
}

enum CoinInfoLoadingStatus {
  idle,
  loading,
}
//
// enum CoinInfoAction {
//   none,
//   pinEntered,
// }
