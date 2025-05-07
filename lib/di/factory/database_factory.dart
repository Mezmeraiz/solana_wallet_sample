import 'package:solana_wallet_sample/data/api/coin_api.dart';
import 'package:solana_wallet_sample/data/api/solana_api.dart';
import 'package:solana_wallet_sample/data/database/dao/coin_dao.dart';
import 'package:solana_wallet_sample/di/factory/dependency_factory.dart';

abstract interface class DatabaseFactory {
  CoinDao get coinDao;
}

class DatabaseFactoryImpl implements DatabaseFactory {
  final DependencyFactory _dependencyFactory;

  DatabaseFactoryImpl({
    required DependencyFactory dependencyFactory,
  }) : _dependencyFactory = dependencyFactory;

  CoinDao? _coinDao;

  @override
  CoinDao get coinDao => _coinDao ??= CoinDaoImpl(
        database: _dependencyFactory.appDatabase,
      );
}
