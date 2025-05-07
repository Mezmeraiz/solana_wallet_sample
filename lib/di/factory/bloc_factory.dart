import 'package:solana_wallet_sample/data/repository/wallet_repository.dart';
import 'package:solana_wallet_sample/di/factory/repository_factory.dart';
import 'package:solana_wallet_sample/feature/coin_list/bloc/coin_list_bloc.dart';
import 'package:solana_wallet_sample/feature/home/bloc/home_bloc.dart';
import 'package:solana_wallet_sample/feature/pin/set_pin/bloc/set_pin_bloc.dart';
import 'package:solana_wallet_sample/feature/welcome/bloc/welcome/welcome_bloc.dart';

abstract interface class BlocFactory {
  WelcomeBloc welcomeBloc();

  SetPinBloc setPinBloc({required int pinLength});

  CoinListBloc coinListBloc();

  HomeBloc homeBloc();
}

class BlocFactoryImpl implements BlocFactory {
  final RepositoryFactory _repositoryFactory;

  BlocFactoryImpl({
    required RepositoryFactory repositoryFactory,
  }) : _repositoryFactory = repositoryFactory;

  @override
  WelcomeBloc welcomeBloc() => WelcomeBloc(
        welcomeRepository: _repositoryFactory.welcomeRepository,
        walletRepository: _repositoryFactory.walletRepository,
      );

  @override
  SetPinBloc setPinBloc({required int pinLength}) => SetPinBloc(
        pinLength: pinLength,
        walletRepository: _repositoryFactory.walletRepository,
      );

  @override
  CoinListBloc coinListBloc() => CoinListBloc(
        walletRepository: _repositoryFactory.walletRepository,
      );

  @override
  HomeBloc homeBloc() => HomeBloc(
        walletRepository: _repositoryFactory.walletRepository,
        blockchainCoinDataRepository: _repositoryFactory.blockchainCoinDataRepository,
      );
}
