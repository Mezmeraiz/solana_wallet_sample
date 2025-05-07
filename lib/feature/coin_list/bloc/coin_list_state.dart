part of 'coin_list_bloc.dart';

@freezed
class CoinListState with _$CoinListState {
  const factory CoinListState({
    @Default('') String pin,
    String? enteredPin,
    @Default(CoinListStatus.idle) CoinListStatus status,
    @Default(CoinListAction.none) CoinListAction action,
  }) = _CoinListState;
}

enum CoinListStatus {
  idle,
  pinDoesNotMatch,
}

enum CoinListAction {
  none,
  pinEntered,
}
