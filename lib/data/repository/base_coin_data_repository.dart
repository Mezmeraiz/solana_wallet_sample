import 'package:rxdart/rxdart.dart';
import 'package:solana_wallet_sample/data/api/coin_api.dart';
import 'package:solana_wallet_sample/data/database/dao/coin_dao.dart';
import 'package:solana_wallet_sample/data/model/coin/base_coin_data.dart';
import 'package:solana_wallet_sample/data/model/coin/icon_coin_data.dart';

enum BaseCoinDataRepositoryState {
  loading,
  baseDataLoaded,
  iconsLoaded,
}

abstract class BaseCoinDataRepository {
  ValueStream<BaseCoinDataRepositoryState> get stateStream;
  Future<void> init();
}

class BaseCoinDataRepositoryImpl implements BaseCoinDataRepository {
  final CoinApi _coinApi;
  final CoinDao _coinDao;

  BaseCoinDataRepositoryImpl({
    required CoinApi coinApi,
    required CoinDao coinDao,
  })  : _coinApi = coinApi,
        _coinDao = coinDao;

  final BehaviorSubject<BaseCoinDataRepositoryState> _stateController =
      BehaviorSubject.seeded(BaseCoinDataRepositoryState.loading);

  @override
  ValueStream<BaseCoinDataRepositoryState> get stateStream => _stateController.stream;

  @override
  Future<void> init() async {
    final bool baseDataLoaded = (await _coinDao.getBaseCoinData(
      limit: 1,
      offset: 1,
    ))
        .isNotEmpty;

    if (!baseDataLoaded) {
      await _loadCoinBaseData();
    }

    _stateController.add(BaseCoinDataRepositoryState.baseDataLoaded);

    _loadImageCoinData();

    _stateController.add(BaseCoinDataRepositoryState.iconsLoaded);
  }

  Future<List<BaseCoinData>> _loadCoinBaseData() async {
    final coins = await _coinApi.getBaseCoinData();
    await _coinDao.saveBaseCoinData(coins: coins);

    return coins;
  }

  Future<void> _loadImageCoinData() async {
    while (true) {
      final List<String> ids = await _coinDao.getCoinIdsWithoutIcon();
      if (ids.isEmpty) break;

      final List<IconCoinData> coins = await _coinApi.getCoinIcons(ids);
      await Future.delayed(const Duration(seconds: 10));
      await _coinDao.updateCoinIcons(coins);
    }
  }
}
