import 'package:solana_wallet_sample/data/database/dao/coin_dao.dart';
import 'package:solana_wallet_sample/data/storage/common_storage.dart';

abstract interface class HomeRepository {
  Future<void> clearData();
}

class HomeRepositoryImpl implements HomeRepository {
  final CommonStorage _commonStorage;
  final CoinDao _coinDao;

  const HomeRepositoryImpl({
    required CommonStorage commonStorage,
    required CoinDao coinDao,
  })  : _commonStorage = commonStorage,
        _coinDao = coinDao;

  @override
  Future<void> clearData() async {
    await _commonStorage.clearStorage();
    await _coinDao.clearActiveCoins();
    await _coinDao.clearBlockchainCoinData();
  }
}
