import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solana_wallet_sample/data/repository/wallet_repository.dart';

part 'set_pin_bloc.freezed.dart';
part 'set_pin_event.dart';
part 'set_pin_state.dart';

class SetPinBloc extends Bloc<SetPinEvent, SetPinState> {
  final int pinLength;
  final WalletRepository _walletRepository;

  SetPinBloc({
    required this.pinLength,
    required WalletRepository walletRepository,
  })  : _walletRepository = walletRepository,
        super(const SetPinState()) {
    on<_PinChanged>(_pinChanged);
  }

  void _pinChanged(
    _PinChanged event,
    Emitter<SetPinState> emit,
  ) {
    if (event.pin.length < pinLength) {
      emit(
        state.copyWith(
          pin: event.pin,
        ),
      );
    } else if (state.enteredPin == null) {
      emit(
        state.copyWith(
          pin: '',
          enteredPin: event.pin,
        ),
      );
    } else if (event.pin == state.enteredPin) {
      emit(
        state.copyWith(
          pin: event.pin,
          action: SetPinAction.pinEntered,
        ),
      );
    } else {
      emit(
        state.copyWith(
          pin: event.pin,
          status: SetPinStatus.pinDoesNotMatch,
        ),
      );
    }
  }
}
