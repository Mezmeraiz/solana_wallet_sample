import 'package:solana_wallet_sample/data/api/coin_api.dart';
import 'package:solana_wallet_sample/data/api/solana_api.dart';
import 'package:solana_wallet_sample/di/factory/dependency_factory.dart';

abstract interface class NetworkFactory {
  SolanaApi get solanaApi;
  CoinApi get coinApi;
}

class NetworkFactoryImpl implements NetworkFactory {
  final DependencyFactory _dependencyFactory;

  NetworkFactoryImpl({
    required DependencyFactory dependencyFactory,
  }) : _dependencyFactory = dependencyFactory;

  SolanaApi? _solanaApi;

  CoinApi? _coinApi;

  @override
  SolanaApi get solanaApi => _solanaApi ??= SolanaApiImpl(
        httpWrapper: _dependencyFactory.httpWrapper,
      );

  @override
  CoinApi get coinApi => _coinApi ??= CoinApiImpl(
        httpWrapper: _dependencyFactory.httpWrapper,
      );
}
