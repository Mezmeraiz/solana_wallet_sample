import 'package:solana_wallet_sample/di/factory/repository_factory.dart';
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
}

class BlocFactoryImpl implements BlocFactory {
  final RepositoryFactory _repositoryFactory;

  BlocFactoryImpl({
    required RepositoryFactory repositoryFactory,
  }) : _repositoryFactory = repositoryFactory;

  @override
  WelcomeBloc welcomeBloc() => WelcomeBloc(
        pinRepository: _repositoryFactory.pinRepository,
        walletRepository: _repositoryFactory.walletRepository,
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
        walletRepository: _repositoryFactory.walletRepository,
        baseCoinDataRepository: _repositoryFactory.baseCoinDataRepository,
        blockchainCoinDataRepository: _repositoryFactory.blockchainCoinDataRepository,
      );

  @override
  EnterPinBloc enterPinBloc() => EnterPinBloc(
        walletRepository: _repositoryFactory.walletRepository,
        pinRepository: _repositoryFactory.pinRepository,
      );
}
