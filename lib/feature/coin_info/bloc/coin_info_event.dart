part of 'coin_info_bloc.dart';

@freezed
class CoinInfoEvent with _$CoinInfoEvent {
  const factory CoinInfoEvent.init() = _Init;
  const factory CoinInfoEvent.blockchainDataChanged(BlockchainCoinData? data) = _BlockchainDataChanged;
}
