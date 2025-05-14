part of 'coin_info_bloc.dart';

@freezed
class CoinInfoEvent with _$CoinInfoEvent {
  const factory CoinInfoEvent.init() = _Init;
  //
  // const factory CoinInfoEvent.loadMore() = _LoadMore;
  //
  // const factory CoinInfoEvent.load() = _Load;
  //
  // const factory CoinInfoEvent.search({
  //   required String query,
  // }) = _Search;
  //
  // const factory CoinInfoEvent.coinStateChanged({
  //   required String coinId,
  //   required bool isSelected,
  // }) = _CoinStateChanged;
}
