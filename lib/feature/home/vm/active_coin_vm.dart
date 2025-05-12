import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solana_wallet_sample/data/model/coin/base_coin_data.dart';
import 'package:solana_wallet_sample/data/model/coin/blockchain_coin_data.dart';
import 'package:solana_wallet_sample/data/model/coin/coin_type.dart';

part 'active_coin_vm.freezed.dart';

@freezed
class ActiveCoinVM with _$ActiveCoinVM {
  const factory ActiveCoinVM({
    required String id,
    required String ticker,
    required CoinType type,
    String? iconUrl,
    String? contractAddress,
    BigInt? balance,
    int? decimals,
  }) = _ActiveCoinVM;

  factory ActiveCoinVM.fromCoinData({
    required BaseCoinData baseCoinData,
    BlockchainCoinData? blockchainCoinData,
  }) =>
      ActiveCoinVM(
        id: baseCoinData.id,
        ticker: baseCoinData.ticker,
        type: baseCoinData.type,
        iconUrl: baseCoinData.iconUrl,
        contractAddress: baseCoinData.contractAddress,
        balance: blockchainCoinData?.balance,
        decimals: blockchainCoinData?.decimals,
      );
}
