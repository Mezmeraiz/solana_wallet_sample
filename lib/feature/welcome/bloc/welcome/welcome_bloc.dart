import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solana_wallet_sample/data/repository/pin_repository.dart';
import 'package:solana_wallet_sample/data/repository/wallet_repository.dart';
import 'package:solana_wallet_sample/domain/wallet_service.dart';

part 'welcome_bloc.freezed.dart';
part 'welcome_event.dart';
part 'welcome_state.dart';

class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  final PinRepository _pinRepository;
  final WalletRepository _walletRepository;
  final WalletService _walletService;

  WelcomeBloc({
    required PinRepository pinRepository,
    required WalletRepository walletRepository,
    required WalletService walletService,
  })  : _pinRepository = pinRepository,
        _walletRepository = walletRepository,
        _walletService = walletService,
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
  ) async {
    try {
      await _pinRepository.firstSetup(
        seed: state.seedPhrase!,
        pin: event.pin,
      );

      await _walletService.saveAddress(
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
