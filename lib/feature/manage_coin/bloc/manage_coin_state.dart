part of 'manage_coin_bloc.dart';

@freezed
class ManageCoinState with _$ManageCoinState {
  const factory ManageCoinState({
    @Default('') String pin,
    String? enteredPin,
    @Default(ManageCoinStatus.idle) ManageCoinStatus status,
    @Default(ManageCoinAction.none) ManageCoinAction action,
  }) = _ManageCoinState;
}

enum ManageCoinStatus {
  idle,
  pinDoesNotMatch,
}

enum ManageCoinAction {
  none,
  pinEntered,
}
