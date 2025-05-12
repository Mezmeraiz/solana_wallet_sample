part of 'manage_coin_bloc.dart';

@freezed
class ManageCoinEvent with _$ManageCoinEvent {
  const factory ManageCoinEvent.pinChanged({required String pin}) = _PinChanged;
}
