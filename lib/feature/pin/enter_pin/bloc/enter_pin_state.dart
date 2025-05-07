part of 'enter_pin_bloc.dart';

@freezed
class EnterPinState with _$EnterPinState {
  const factory EnterPinState({
    @Default('') String pin,
    String? enteredPin,
    @Default(EnterPinStatus.idle) EnterPinStatus status,
    @Default(EnterPinAction.none) EnterPinAction action,
  }) = _EnterPinState;
}

enum EnterPinStatus {
  idle,
  pinDoesNotMatch,
}

enum EnterPinAction {
  none,
  pinEntered,
}
