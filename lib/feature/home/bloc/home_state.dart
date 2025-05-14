part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<ActiveCoinVM> activeCoins,
    @Default(ProgressStatus.idle) ProgressStatus progressStatus,
    @Default(HomeAction.none) HomeAction action,
  }) = _HomeState;
}

enum ProgressStatus {
  idle,
  loading,
}

enum HomeAction {
  none,
  logout,
}
