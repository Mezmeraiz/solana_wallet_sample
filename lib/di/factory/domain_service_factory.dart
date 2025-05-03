import 'package:solana_wallet_sample/di/factory/repository_factory.dart';

abstract interface class DomainServiceFactory {
  //NameWalletService get nameWalletService;
}

class DomainServiceFactoryImpl implements DomainServiceFactory {
  final RepositoryFactory _repositoryFactory;

  const DomainServiceFactoryImpl({
    required RepositoryFactory repositoryFactory,
  }) : _repositoryFactory = repositoryFactory;

  // @override
  // NameWalletService get nameWalletService => const NameWalletServiceImpl();
}
