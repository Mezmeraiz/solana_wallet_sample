import 'package:freezed_annotation/freezed_annotation.dart';

part 'blockchain_coin_data.freezed.dart';
part 'blockchain_coin_data.g.dart';

@freezed
sealed class BlockchainCoinData with _$BlockchainCoinData {
  const BlockchainCoinData._();

  const factory BlockchainCoinData({
    required String id,
    String? contractAddress,
    required BigInt balance,
    required int decimals,
  }) = _BlockchainCoinData;

  factory BlockchainCoinData.empty() => BlockchainCoinData(
        id: '',
        contractAddress: null,
        balance: BigInt.zero,
        decimals: 0,
      );

  factory BlockchainCoinData.fromJson(Map<String, Object?> json) => _$BlockchainCoinDataFromJson(json);
}
