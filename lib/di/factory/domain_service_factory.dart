import 'package:solana_wallet_sample/di/factory/dependency_factory.dart';
import 'package:solana_wallet_sample/di/factory/network_factory.dart';
import 'package:solana_wallet_sample/di/factory/repository_factory.dart';
import 'package:solana_wallet_sample/domain/solana_service.dart';
import 'package:solana_wallet_sample/domain/wallet_service.dart';

abstract interface class ServiceFactory {
  WalletService get walletService;
  SolanaService get solanaService;
}

class ServiceFactoryImpl implements ServiceFactory {
  final RepositoryFactory _repositoryFactory;
  final DependencyFactory _dependencyFactory;
  final NetworkFactory _networkFactory;

  const ServiceFactoryImpl({
    required RepositoryFactory repositoryFactory,
    required DependencyFactory dependencyFactory,
    required NetworkFactory networkFactory,
  })  : _repositoryFactory = repositoryFactory,
        _dependencyFactory = dependencyFactory,
        _networkFactory = networkFactory;

  @override
  WalletService get walletService => WalletServiceImpl(
        secureVault: _dependencyFactory.secureVault,
        commonStorage: _dependencyFactory.commonStorage,
        walletRepository: _repositoryFactory.walletRepository,
      );

  @override
  SolanaService get solanaService => SolanaServiceImpl(
        solanaApi: _networkFactory.solanaApi,
        walletRepository: _repositoryFactory.walletRepository,
        commonStorage: _dependencyFactory.commonStorage,
      );
}
