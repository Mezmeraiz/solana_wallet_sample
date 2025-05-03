import 'package:solana_wallet_sample/data/repository/wallet_repository.dart';
import 'package:solana_wallet_sample/di/factory/dependency_factory.dart';
import 'package:solana_wallet_sample/feature/welcome/data/welcome_repository.dart';

abstract interface class RepositoryFactory {
  WelcomeRepository get welcomeRepository;

  WalletRepository get walletRepository;
}

class RepositoryFactoryImpl implements RepositoryFactory {
  final DependencyFactory _dependencyFactory;

  RepositoryFactoryImpl({
    required DependencyFactory dependencyFactory,
  }) : _dependencyFactory = dependencyFactory;

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
}
