import 'package:solana_wallet_sample/di/factory/dependency_factory.dart';
import 'package:solana_wallet_sample/di/factory/repository_factory.dart';
import 'package:solana_wallet_sample/domain/wallet_service.dart';

abstract interface class ServiceFactory {
  WalletService get walletService;
}

class ServiceFactoryImpl implements ServiceFactory {
  final RepositoryFactory _repositoryFactory;
  final DependencyFactory _dependencyFactory;

  const ServiceFactoryImpl({
    required RepositoryFactory repositoryFactory,
    required DependencyFactory dependencyFactory,
  })  : _repositoryFactory = repositoryFactory,
        _dependencyFactory = dependencyFactory;

  @override
  WalletService get walletService => WalletServiceImpl(
        secureVault: _dependencyFactory.secureVault,
        commonStorage: _dependencyFactory.commonStorage,
        walletRepository: _repositoryFactory.walletRepository,
      );
}
