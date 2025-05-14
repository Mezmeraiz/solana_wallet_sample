import 'package:solana_wallet_sample/data/repository/base_coin_data_repository.dart';
import 'package:solana_wallet_sample/data/repository/blockchain_coin_data_repository.dart';
import 'package:solana_wallet_sample/data/repository/pin_repository.dart';
import 'package:solana_wallet_sample/data/repository/wallet_repository.dart';
import 'package:solana_wallet_sample/di/factory/database_factory.dart';
import 'package:solana_wallet_sample/di/factory/dependency_factory.dart';
import 'package:solana_wallet_sample/di/factory/network_factory.dart';
import 'package:solana_wallet_sample/feature/home/data/home_repository.dart';

abstract interface class RepositoryFactory {
  WalletRepository get walletRepository;

  BaseCoinDataRepository get baseCoinDataRepository;

  BlockchainCoinDataRepository get blockchainCoinDataRepository;

  PinRepository get pinRepository;

  HomeRepository get homeRepository;
}

class RepositoryFactoryImpl implements RepositoryFactory {
  final DependencyFactory _dependencyFactory;
  final NetworkFactory _networkFactory;
  final DatabaseFactory _databaseFactory;

  RepositoryFactoryImpl({
    required DependencyFactory dependencyFactory,
    required NetworkFactory networkFactory,
    required DatabaseFactory databaseFactory,
  })  : _dependencyFactory = dependencyFactory,
        _networkFactory = networkFactory,
        _databaseFactory = databaseFactory;

  WalletRepository? _walletRepository;

  BaseCoinDataRepository? _baseCoinDataRepository;

  BlockchainCoinDataRepository? _blockchainCoinDataRepository;

  @override
  WalletRepository get walletRepository => _walletRepository ??= WalletRepositoryImpl(
        core: _dependencyFactory.core,
      );

  @override
  BaseCoinDataRepository get baseCoinDataRepository => _baseCoinDataRepository ??= BaseCoinDataRepositoryImpl(
        coinApi: _networkFactory.coinApi,
        coinDao: _databaseFactory.coinDao,
      );

  @override
  BlockchainCoinDataRepository get blockchainCoinDataRepository =>
      _blockchainCoinDataRepository ??= BlockchainCoinDataRepositoryImpl(
        solanaApi: _networkFactory.solanaApi,
        coinDao: _databaseFactory.coinDao,
        secureVault: _dependencyFactory.secureVault,
        commonStorage: _dependencyFactory.commonStorage,
        walletRepository: walletRepository,
      );

  @override
  PinRepository get pinRepository => PinRepositoryImpl(
        secureVault: _dependencyFactory.secureVault,
      );

  @override
  HomeRepository get homeRepository => HomeRepositoryImpl(
        commonStorage: _dependencyFactory.commonStorage,
        coinDao: _databaseFactory.coinDao,
      );
}
