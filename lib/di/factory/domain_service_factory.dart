import 'package:solana_wallet_sample/di/factory/repository_factory.dart';

abstract interface class ServiceFactory {
  //NameWalletService get nameWalletService;
}

class ServiceFactoryImpl implements ServiceFactory {
  final RepositoryFactory _repositoryFactory;

  const ServiceFactoryImpl({
    required RepositoryFactory repositoryFactory,
  }) : _repositoryFactory = repositoryFactory;

  // @override
  // NameWalletService get nameWalletService => const NameWalletServiceImpl();
}
