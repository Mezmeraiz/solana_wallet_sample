part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default('') String pin,
    String? enteredPin,
    @Default(HomeStatus.idle) HomeStatus status,
    @Default(HomeAction.none) HomeAction action,
  }) = _HomeState;
}

enum HomeStatus {
  idle,
  pinDoesNotMatch,
}

enum HomeAction {
  none,
  pinEntered,
}
