import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solana_wallet_sample/data/repository/wallet_repository.dart';
import 'package:solana_wallet_sample/feature/welcome/data/welcome_repository.dart';

part 'welcome_bloc.freezed.dart';
part 'welcome_event.dart';
part 'welcome_state.dart';

class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  final WelcomeRepository _welcomeRepository;
  final WalletRepository _walletRepository;

  WelcomeBloc({
    required WelcomeRepository welcomeRepository,
    required WalletRepository walletRepository,
  })  : _welcomeRepository = welcomeRepository,
        _walletRepository = walletRepository,
        super(const WelcomeState()) {
    on<_SeedPhraseChanged>(_seedPhraseChanged);
    on<_PinChanged>(_pinChanged);
  }

  void _seedPhraseChanged(
    _SeedPhraseChanged event,
    Emitter<WelcomeState> emit,
  ) async {
    final bool isSeedPhraseValid = _walletRepository.mnemonicIsValid(event.seedPhrase);
    if (isSeedPhraseValid) {
      emit(state.copyWith(seedPhrase: event.seedPhrase));
      emit(state.copyWith(action: WelcomeAction.requestPin));
    } else {
      emit(state.copyWith(status: WelcomeStatus.seedPhraseError));
    }
  }

  void _pinChanged(
    _PinChanged event,
    Emitter<WelcomeState> emit,
  ) {
    try {
      _welcomeRepository.saveSeedPhrase(
        seedPhrase: state.seedPhrase!,
        pin: event.pin,
      );

      emit(
        state.copyWith(
          action: WelcomeAction.dataSaved,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          action: WelcomeAction.saveError,
        ),
      );
    }
  }
}
