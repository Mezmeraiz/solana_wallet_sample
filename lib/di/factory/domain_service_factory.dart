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

  ServiceFactoryImpl({
    required RepositoryFactory repositoryFactory,
    required DependencyFactory dependencyFactory,
    required NetworkFactory networkFactory,
  })  : _repositoryFactory = repositoryFactory,
        _dependencyFactory = dependencyFactory,
        _networkFactory = networkFactory;

  WalletService? _walletService;

  SolanaService? _solanaService;

  @override
  WalletService get walletService => _walletService ??= WalletServiceImpl(
        walletRepository: _repositoryFactory.walletRepository,
        secureVault: _dependencyFactory.secureVault,
        commonStorage: _dependencyFactory.commonStorage,
      );

  @override
  SolanaService get solanaService => _solanaService ??= SolanaServiceImpl(
        solanaApi: _networkFactory.solanaApi,
        walletRepository: _repositoryFactory.walletRepository,
        commonStorage: _dependencyFactory.commonStorage,
        secureVault: _dependencyFactory.secureVault,
      );
}
