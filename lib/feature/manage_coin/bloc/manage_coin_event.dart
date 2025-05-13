part of 'manage_coin_bloc.dart';

@freezed
class ManageCoinEvent with _$ManageCoinEvent {
  const factory ManageCoinEvent.init() = _Init;

  const factory ManageCoinEvent.loadMore() = _LoadMore;

  const factory ManageCoinEvent.load() = _Load;

  const factory ManageCoinEvent.search({
    required String query,
  }) = _Search;

  const factory ManageCoinEvent.coinStateChanged({
    required String coinId,
    required bool isSelected,
  }) = _CoinStateChanged;
}
