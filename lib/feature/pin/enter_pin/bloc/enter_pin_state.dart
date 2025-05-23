part of 'enter_pin_bloc.dart';

@freezed
class EnterPinState with _$EnterPinState {
  const factory EnterPinState({
    @Default('') String pin,
    String? enteredPin,
    int? remainingAttempts,
    @Default(EnterPinStatus.idle) EnterPinStatus status,
    @Default(EnterPinAction.none) EnterPinAction action,
  }) = _EnterPinState;
}

enum EnterPinStatus {
  idle,
  wrongPin,
}

enum EnterPinAction {
  none,
  pinEntered,
  logout,
}
