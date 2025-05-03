part of 'welcome_bloc.dart';

@freezed
class WelcomeEvent with _$WelcomeEvent {
  const factory WelcomeEvent.seedPhraseChanged({required String seedPhrase}) = _SeedPhraseChanged;

  const factory WelcomeEvent.pinChanged({required String pin}) = _PinChanged;
}
