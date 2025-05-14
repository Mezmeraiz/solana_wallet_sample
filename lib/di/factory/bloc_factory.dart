import 'package:solana_wallet_sample/di/factory/domain_service_factory.dart';
import 'package:solana_wallet_sample/di/factory/repository_factory.dart';
import 'package:solana_wallet_sample/feature/coin_info/bloc/coin_info_bloc.dart';
import 'package:solana_wallet_sample/feature/home/bloc/home_bloc.dart';
import 'package:solana_wallet_sample/feature/manage_coin/bloc/manage_coin_bloc.dart';
import 'package:solana_wallet_sample/feature/pin/enter_pin/bloc/enter_pin_bloc.dart';
import 'package:solana_wallet_sample/feature/pin/set_pin/bloc/set_pin_bloc.dart';
import 'package:solana_wallet_sample/feature/welcome/bloc/welcome/welcome_bloc.dart';

abstract interface class BlocFactory {
  WelcomeBloc welcomeBloc();

  SetPinBloc setPinBloc();

  ManageCoinBloc manageCoinBloc();

  HomeBloc homeBloc();

  EnterPinBloc enterPinBloc();

  CoinInfoBloc coinInfoBloc(String coinId);
}

class BlocFactoryImpl implements BlocFactory {
  final RepositoryFactory _repositoryFactory;
  final ServiceFactory _serviceFactory;

  BlocFactoryImpl({
    required RepositoryFactory repositoryFactory,
    required ServiceFactory serviceFactory,
  })  : _repositoryFactory = repositoryFactory,
        _serviceFactory = serviceFactory;

  @override
  WelcomeBloc welcomeBloc() => WelcomeBloc(
        pinRepository: _repositoryFactory.pinRepository,
        walletRepository: _repositoryFactory.walletRepository,
        walletService: _serviceFactory.walletService,
      );

  @override
  SetPinBloc setPinBloc() => SetPinBloc();

  @override
  ManageCoinBloc manageCoinBloc() => ManageCoinBloc(
        walletRepository: _repositoryFactory.walletRepository,
        baseCoinDataRepository: _repositoryFactory.baseCoinDataRepository,
        blockchainCoinDataRepository: _repositoryFactory.blockchainCoinDataRepository,
      );

  @override
  HomeBloc homeBloc() => HomeBloc(
        pinRepository: _repositoryFactory.pinRepository,
        homeRepository: _repositoryFactory.homeRepository,
        baseCoinDataRepository: _repositoryFactory.baseCoinDataRepository,
        blockchainCoinDataRepository: _repositoryFactory.blockchainCoinDataRepository,
      );

  @override
  EnterPinBloc enterPinBloc() => EnterPinBloc(
        walletRepository: _repositoryFactory.walletRepository,
        pinRepository: _repositoryFactory.pinRepository,
      );

  @override
  CoinInfoBloc coinInfoBloc(String coinId) => CoinInfoBloc(
        walletService: _serviceFactory.walletService,
        baseCoinDataRepository: _repositoryFactory.baseCoinDataRepository,
        blockchainCoinDataRepository: _repositoryFactory.blockchainCoinDataRepository,
        coinId: coinId,
      );
}
