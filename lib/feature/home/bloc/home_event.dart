part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.init({required String pin}) = _Init;

  // const factory HomeEvent.pinChanged({required String pin}) = _PinChanged;
}
