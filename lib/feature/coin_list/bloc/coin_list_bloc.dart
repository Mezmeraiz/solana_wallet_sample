import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solana_wallet_sample/data/repository/wallet_repository.dart';

part 'coin_list_bloc.freezed.dart';
part 'coin_list_event.dart';
part 'coin_list_state.dart';

class CoinListBloc extends Bloc<CoinListEvent, CoinListState> {
  final WalletRepository _walletRepository;

  CoinListBloc({
    required WalletRepository walletRepository,
  })  : _walletRepository = walletRepository,
        super(const CoinListState()) {
    //on<_PinChanged>(_pinChanged);
  }
  //
  // void _pinChanged(
  //   _PinChanged event,
  //   Emitter<CoinListState> emit,
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
  //         action: CoinListAction.pinEntered,
  //       ),
  //     );
  //   } else {
  //     emit(
  //       state.copyWith(
  //         pin: event.pin,
  //         status: CoinListStatus.pinDoesNotMatch,
  //       ),
  //     );
  //   }
  // }
}
