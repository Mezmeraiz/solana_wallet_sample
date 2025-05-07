import 'package:solana_wallet_sample/data/model/coin/blockchain_coin_data.dart';
import 'package:solana_wallet_sample/data/repository/blockchain_coin_data_repository.dart';
import 'package:solana_wallet_sample/data/repository/wallet_repository.dart';
import 'package:solana_wallet_sample/di/factory/database_factory.dart';
import 'package:solana_wallet_sample/di/factory/dependency_factory.dart';
import 'package:solana_wallet_sample/di/factory/network_factory.dart';
import 'package:solana_wallet_sample/feature/welcome/data/welcome_repository.dart';

abstract interface class RepositoryFactory {
  WelcomeRepository get welcomeRepository;

  WalletRepository get walletRepository;

  BlockchainCoinDataRepository get blockchainCoinDataRepository;
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

  WelcomeRepository? _welcomeRepository;

  WalletRepository? _walletRepository;

  @override
  WelcomeRepository get welcomeRepository => _welcomeRepository ??= WelcomeRepositoryImpl(
        secureVault: _dependencyFactory.secureVault,
      );

  @override
  WalletRepository get walletRepository => _walletRepository ??= WalletRepositoryImpl(
        core: _dependencyFactory.core,
      );

  @override
  BlockchainCoinDataRepository get blockchainCoinDataRepository => BlockchainCoinDataRepositoryImpl(
        solanaApi: _networkFactory.solanaApi,
        coinDao: _databaseFactory.coinDao,
        secureVault: _dependencyFactory.secureVault,
        commonStorage: _dependencyFactory.commonStorage,
        walletRepository: walletRepository,
      );
}
