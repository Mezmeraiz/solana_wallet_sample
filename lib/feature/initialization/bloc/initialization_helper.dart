import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:solana_wallet_sample/di/factory/bloc_factory.dart';
import 'package:solana_wallet_sample/di/factory/database_factory.dart';
import 'package:solana_wallet_sample/di/factory/dependency_factory.dart';
import 'package:solana_wallet_sample/di/factory/domain_service_factory.dart';
import 'package:solana_wallet_sample/di/factory/network_factory.dart';
import 'package:solana_wallet_sample/di/factory/repository_factory.dart';
import 'package:solana_wallet_sample/feature/initialization/data/model/initialization_result.dart';
import 'package:solana_wallet_sample/ffigen_output/generated_bindings.dart';

abstract class InitializationHelper {
  Future<InitializationResult> init();
}

class InitializationHelperImpl extends InitializationHelper {
  final TrustWalletCore _core;

  InitializationHelperImpl({
    required TrustWalletCore core,
  })  : _core = core,
        super();

  @override
  Future<InitializationResult> init() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    final dependenciesFactory = DependencyFactoryImpl(
      sharedPreferences: sharedPreferences,
      core: _core,
    );

    final networkFactory = NetworkFactoryImpl(
      dependencyFactory: dependenciesFactory,
    );

    final databaseFactory = DatabaseFactoryImpl(
      dependencyFactory: dependenciesFactory,
    );

    final repositoryFactory = RepositoryFactoryImpl(
      dependencyFactory: dependenciesFactory,
      networkFactory: networkFactory,
      databaseFactory: databaseFactory,
    );

    repositoryFactory.baseCoinDataRepository.init();

    final serviceFactory = ServiceFactoryImpl(
      repositoryFactory: repositoryFactory,
      dependencyFactory: dependenciesFactory,
      networkFactory: networkFactory,
    );

    final blocFactory = BlocFactoryImpl(
      repositoryFactory: repositoryFactory,
      serviceFactory: serviceFactory,
    );

    final bool hasSeedPhrase = await repositoryFactory.pinRepository.hasSeed() ?? false;

    return InitializationResult(
      dependenciesFactory: dependenciesFactory,
      blocFactory: blocFactory,
      repositoryFactory: repositoryFactory,
      serviceFactory: serviceFactory,
      networkFactory: networkFactory,
      databaseFactory: databaseFactory,
      hasSeedPhrase: hasSeedPhrase,
    );
  }
}
