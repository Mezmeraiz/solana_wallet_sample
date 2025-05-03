import 'package:solana_wallet_sample/di/factory/repository_factory.dart';
import 'package:solana_wallet_sample/feature/pin/set_pin/bloc/set_pin_bloc.dart';
import 'package:solana_wallet_sample/feature/welcome/bloc/welcome/welcome_bloc.dart';

abstract interface class BlocFactory {
  WelcomeBloc welcomeBloc();

  SetPinBloc setPinBloc({required int pinLength});
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
}
