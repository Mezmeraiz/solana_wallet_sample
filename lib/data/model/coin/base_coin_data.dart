import 'package:solana_wallet_sample/data/model/coin/coin_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'base_coin_data.freezed.dart';
part 'base_coin_data.g.dart';

@freezed
sealed class BaseCoinData with _$BaseCoinData {
  const BaseCoinData._();

  const factory BaseCoinData({
    required String id,
    required String ticker,
    String? iconUrl,
    String? contractAddress,
    required CoinType type,
  }) = _BaseCoinData;

  factory BaseCoinData.fromJson(Map<String, Object?> json) => _$BaseCoinDataFromJson(json);
}
