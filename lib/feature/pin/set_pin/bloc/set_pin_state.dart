part of 'set_pin_bloc.dart';

@freezed
class SetPinState with _$SetPinState {
  const factory SetPinState({
    @Default('') String pin,
    String? enteredPin,
    @Default(SetPinStatus.idle) SetPinStatus status,
    @Default(SetPinAction.none) SetPinAction action,
  }) = _SetPinState;
}

enum SetPinStatus {
  idle,
  pinDoesNotMatch,
}

enum SetPinAction {
  none,
  pinEntered,
}
