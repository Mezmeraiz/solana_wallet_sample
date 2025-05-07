part of 'coin_list_bloc.dart';

@freezed
class CoinListEvent with _$CoinListEvent {
  const factory CoinListEvent.pinChanged({required String pin}) = _PinChanged;
}
