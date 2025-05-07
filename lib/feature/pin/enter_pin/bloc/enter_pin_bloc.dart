import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solana_wallet_sample/data/repository/wallet_repository.dart';

part 'enter_pin_bloc.freezed.dart';
part 'enter_pin_event.dart';
part 'enter_pin_state.dart';

class EnterPinBloc extends Bloc<EnterPinEvent, EnterPinState> {
  final int pinLength;
  final WalletRepository _walletRepository;

  EnterPinBloc({
    required this.pinLength,
    required WalletRepository walletRepository,
  })  : _walletRepository = walletRepository,
        super(const EnterPinState()) {
    on<_PinChanged>(_pinChanged);
  }

  void _pinChanged(
    _PinChanged event,
    Emitter<EnterPinState> emit,
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
          action: EnterPinAction.pinEntered,
        ),
      );
    } else {
      emit(
        state.copyWith(
          pin: event.pin,
          status: EnterPinStatus.pinDoesNotMatch,
        ),
      );
    }
  }
}
