part of 'enter_pin_bloc.dart';

@freezed
class EnterPinEvent with _$EnterPinEvent {
  const factory EnterPinEvent.pinChanged({required String pin}) = _PinChanged;
}
