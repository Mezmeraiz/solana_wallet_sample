part of 'set_pin_bloc.dart';

@freezed
class SetPinEvent with _$SetPinEvent {
  const factory SetPinEvent.pinChanged({required String pin}) = _PinChanged;
}
