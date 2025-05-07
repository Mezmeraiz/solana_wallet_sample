part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.pinChanged({required String pin}) = _PinChanged;
}
