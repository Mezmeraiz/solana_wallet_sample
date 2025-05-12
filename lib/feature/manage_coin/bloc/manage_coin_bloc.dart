import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solana_wallet_sample/data/repository/wallet_repository.dart';

part 'manage_coin_bloc.freezed.dart';
part 'manage_coin_event.dart';
part 'manage_coin_state.dart';

class ManageCoinBloc extends Bloc<ManageCoinEvent, ManageCoinState> {
  final WalletRepository _walletRepository;

  ManageCoinBloc({
    required WalletRepository walletRepository,
  })  : _walletRepository = walletRepository,
        super(const ManageCoinState()) {
    //on<_PinChanged>(_pinChanged);
  }
  //
  // void _pinChanged(
  //   _PinChanged event,
  //   Emitter<ManageCoinState> emit,
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
  //         action: ManageCoinAction.pinEntered,
  //       ),
  //     );
  //   } else {
  //     emit(
  //       state.copyWith(
  //         pin: event.pin,
  //         status: ManageCoinStatus.pinDoesNotMatch,
  //       ),
  //     );
  //   }
  // }
}
