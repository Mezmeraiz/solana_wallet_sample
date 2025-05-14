part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.init({required String pin}) = _Init;
  const factory HomeEvent.dataChanged({
    required List<BlockchainCoinData> blockchainData,
    required Set<String> activeCoinIds,
  }) = _DataChanged;
  const factory HomeEvent.logout() = _Logout;
}
