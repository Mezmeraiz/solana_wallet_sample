import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solana_wallet_sample/data/repository/pin_repository.dart';
import 'package:solana_wallet_sample/data/repository/wallet_repository.dart';
import 'package:solana_wallet_sample/feature/pin/common/pin_constatnts.dart';

part 'enter_pin_bloc.freezed.dart';
part 'enter_pin_event.dart';
part 'enter_pin_state.dart';

class EnterPinBloc extends Bloc<EnterPinEvent, EnterPinState> {
  final WalletRepository _walletRepository;
  final PinRepository _pinRepository;

  EnterPinBloc({
    required WalletRepository walletRepository,
    required PinRepository pinRepository,
  })  : _walletRepository = walletRepository,
        _pinRepository = pinRepository,
        super(const EnterPinState()) {
    on<_PinChanged>(
      _pinChanged,
      transformer: sequential(),
    );
  }

  void _pinChanged(
    _PinChanged event,
    Emitter<EnterPinState> emit,
  ) async {
    if (event.pin.length < PinConstants.pinLength) {
      emit(
        state.copyWith(
          pin: event.pin,
        ),
      );
    } else {
      final bool pinCorrect = await _pinRepository.checkPin(event.pin);

      if (pinCorrect) {
        emit(
          state.copyWith(
            pin: event.pin,
            enteredPin: event.pin,
            action: EnterPinAction.pinEntered,
          ),
        );
      } else {
        final int remainingAttempts = await _pinRepository.remainingAttempts();

        if (remainingAttempts == 0) {
          await _pinRepository.resetVault();

          emit(
            state.copyWith(
              action: EnterPinAction.logout,
            ),
          );
        } else {
          emit(
            state.copyWith(
              pin: event.pin,
              remainingAttempts: remainingAttempts,
              status: EnterPinStatus.wrongPin,
            ),
          );
        }
      }
    }
  }
}
