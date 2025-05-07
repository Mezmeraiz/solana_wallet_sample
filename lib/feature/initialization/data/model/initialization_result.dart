import 'package:solana_wallet_sample/di/factory/bloc_factory.dart';
import 'package:solana_wallet_sample/di/factory/database_factory.dart';
import 'package:solana_wallet_sample/di/factory/dependency_factory.dart';
import 'package:solana_wallet_sample/di/factory/domain_service_factory.dart';
import 'package:solana_wallet_sample/di/factory/network_factory.dart';
import 'package:solana_wallet_sample/di/factory/repository_factory.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'initialization_result.freezed.dart';

@freezed
class InitializationResult with _$InitializationResult {
  const InitializationResult._();

  const factory InitializationResult({
    required DependencyFactory dependenciesFactory,
    required BlocFactory blocFactory,
    required RepositoryFactory repositoryFactory,
    required ServiceFactory domainServiceFactory,
    required NetworkFactory networkFactory,
    required DatabaseFactory databaseFactory,
    required bool hasSeedPhrase,
  }) = _InitializationResult;
}
