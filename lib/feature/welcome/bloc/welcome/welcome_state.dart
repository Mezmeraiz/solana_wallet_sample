part of 'welcome_bloc.dart';

@freezed
class WelcomeState with _$WelcomeState {
  const factory WelcomeState({
    String? seedPhrase,
    String? pin,
    @Default(WelcomeStatus.idle) WelcomeStatus status,
    @Default(WelcomeAction.none) WelcomeAction action,
  }) = _WelcomeState;
}

enum WelcomeStatus {
  idle,
  seedPhraseError,
}

enum WelcomeAction {
  none,
  requestPin,
  dataSaved,
  saveError,
}
