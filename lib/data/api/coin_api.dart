import 'package:solana_wallet_sample/data/http_wrapper/http_wrapper.dart';
import 'package:solana_wallet_sample/data/model/coin/base_coin_data.dart';
import 'package:solana_wallet_sample/data/model/coin/coin_type.dart';
import 'package:solana_wallet_sample/data/model/coin/icon_coin_data.dart';

abstract interface class CoinApi {
  Future<List<BaseCoinData>> getBaseCoinData();

  Future<List<IconCoinData>> getCoinIcons(List<String> ids);
}

class CoinApiImpl implements CoinApi {
  final HttpWrapper _httpWrapper;

  const CoinApiImpl({required HttpWrapper httpWrapper}) : _httpWrapper = httpWrapper;

  @override
  Future<List<BaseCoinData>> getBaseCoinData() async {
    final response = await _httpWrapper.get(
      'https://api.coingecko.com/api/v3/coins/list',
      queryParams: {
        'include_platform': 'true',
      },
    );

    response as List;

    final solanaCoins = <BaseCoinData>[];

    for (final item in response) {
      final platforms = item['platforms'] as Map<String, Object?>;
      if (platforms.containsKey('solana')) {
        solanaCoins.add(
          BaseCoinData(
            id: item['id'] as String,
            ticker: (item['symbol'] as String).toUpperCase(),
            type: CoinType.token,
            contractAddress: platforms['solana'] as String,
          ),
        );
      }
    }

    return solanaCoins;
  }

  @override
  Future<List<IconCoinData>> getCoinIcons(List<String> ids) async {
    if (ids.isEmpty) return [];

    final response = await _httpWrapper.get(
      'https://api.coingecko.com/api/v3/coins/markets',
      queryParams: {
        'vs_currency': 'usd',
        'ids': ids.join(','),
        'per_page': '250',
        'page': '1',
      },
    );

    final result = (response as List)
        .map(
          (e) => IconCoinData.fromJson(e),
        )
        .toList();

    return result;
  }
}
