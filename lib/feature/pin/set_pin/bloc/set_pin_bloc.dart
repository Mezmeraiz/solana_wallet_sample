import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solana_wallet_sample/feature/pin/common/pin_constatnts.dart';

part 'set_pin_bloc.freezed.dart';
part 'set_pin_event.dart';
part 'set_pin_state.dart';

class SetPinBloc extends Bloc<SetPinEvent, SetPinState> {
  SetPinBloc() : super(const SetPinState()) {
    on<_PinChanged>(
      _pinChanged,
      transformer: sequential(),
    );
  }

  void _pinChanged(
    _PinChanged event,
    Emitter<SetPinState> emit,
  ) {
    if (event.pin.length < PinConstants.pinLength) {
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
