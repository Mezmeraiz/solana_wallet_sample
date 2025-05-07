import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solana_wallet_sample/data/repository/blockchain_coin_data_repository.dart';
import 'package:solana_wallet_sample/data/repository/wallet_repository.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final WalletRepository _walletRepository;
  final BlockchainCoinDataRepository _blockchainCoinDataRepository;

  HomeBloc({
    required WalletRepository walletRepository,
    required BlockchainCoinDataRepository blockchainCoinDataRepository,
  })  : _walletRepository = walletRepository,
        _blockchainCoinDataRepository = blockchainCoinDataRepository,
        super(const HomeState()) {
    //on<_PinChanged>(_pinChanged);
  }
  //
  // void _pinChanged(
  //   _PinChanged event,
  //   Emitter<HomeState> emit,
  // ) {
  //   if (event.pin.length < pinLength) {
  //     emit(
  //       state.copyWith(
  //         pin: event.pin,
  //       ),
  //     );
  //   } else if (state.enteredPin == null) {
  //     emit(
  //       state.copyWith(
  //         pin: '',
  //         enteredPin: event.pin,
  //       ),
  //     );
  //   } else if (event.pin == state.enteredPin) {
  //     emit(
  //       state.copyWith(
  //         pin: event.pin,
  //         action: HomeAction.pinEntered,
  //       ),
  //     );
  //   } else {
  //     emit(
  //       state.copyWith(
  //         pin: event.pin,
  //         status: HomeStatus.pinDoesNotMatch,
  //       ),
  //     );
  //   }
  // }
}
