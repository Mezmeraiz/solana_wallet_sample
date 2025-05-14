import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solana_wallet_sample/data/model/coin/coin_type.dart';

part 'base_coin_data.freezed.dart';
part 'base_coin_data.g.dart';

@freezed
sealed class BaseCoinData with _$BaseCoinData {
  const BaseCoinData._();

  const factory BaseCoinData({
    required String id,
    required String name,
    required String ticker,
    String? iconUrl,
    String? contractAddress,
    required CoinType type,
  }) = _BaseCoinData;

  factory BaseCoinData.empty() => const BaseCoinData(
        id: '',
        ticker: '',
        name: '',
        iconUrl: null,
        contractAddress: null,
        type: CoinType.token,
      );

  factory BaseCoinData.fromJson(Map<String, Object?> json) => _$BaseCoinDataFromJson(json);
}
