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
    //await _clearData();

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

    final domainServiceFactory = ServiceFactoryImpl(repositoryFactory: repositoryFactory);

    final blocFactory = BlocFactoryImpl(
      repositoryFactory: repositoryFactory,
    );

    final bool hasSeedPhrase = await repositoryFactory.pinRepository.hasSeed() ?? false;

    return InitializationResult(
      dependenciesFactory: dependenciesFactory,
      blocFactory: blocFactory,
      repositoryFactory: repositoryFactory,
      domainServiceFactory: domainServiceFactory,
      networkFactory: networkFactory,
      databaseFactory: databaseFactory,
      hasSeedPhrase: hasSeedPhrase,
    );
  }
}

//TODO remove
Future<void> _clearData() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  await sharedPreferences.clear();

  await deleteDbFile();
}

Future<void> deleteDbFile() async {
  final dir = await getApplicationDocumentsDirectory();
  final dbPath = p.join(dir.path, 'solana.db');
  final file = File(dbPath);
  if (await file.exists()) {
    await file.delete();
  }
}
