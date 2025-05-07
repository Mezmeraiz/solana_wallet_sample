import 'package:solana_wallet_sample/data/api/dto/coin_list_data.dart';
import 'package:solana_wallet_sample/data/http_wrapper/http_wrapper.dart';

abstract interface class SolanaApi {
  Future<List<CoinListData>> getCoinListData();
}

class SolanaApiImpl implements SolanaApi {
  final HttpWrapper _httpWrapper;

  const SolanaApiImpl({required HttpWrapper httpWrapper}) : _httpWrapper = httpWrapper;

  @override
  Future<List<CoinListData>> getCoinListData() async {
    final response = await _httpWrapper.get(
      'https://api.coingecko.com/api/v3/coins/list',
      queryParams: {
        'include_platform': 'true',
      },
    );

    response as List;

    final solanaCoins = <CoinListData>[];

    for (final item in response) {
      final coin = CoinListData.fromJson(item as Map<String, dynamic>);
      if (coin.platforms.containsValue('Es9vMFrzaCERmJfrF4H2FYD4KCoNkY11McCe8BenwNYB')) {
        print('object');
      }
    }

    return solanaCoins;
  }
}
