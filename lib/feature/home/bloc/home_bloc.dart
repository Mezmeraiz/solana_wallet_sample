import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solana_wallet_sample/data/repository/blockchain_coin_data_repository.dart';
import 'package:solana_wallet_sample/data/repository/wallet_repository.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final WalletRepository _walletRepository;
  final BlockchainCoinDataRepository _blockchainCoinDataRepository;

  HomeBloc({
    required WalletRepository walletRepository,
    required BlockchainCoinDataRepository blockchainCoinDataRepository,
  })  : _walletRepository = walletRepository,
        _blockchainCoinDataRepository = blockchainCoinDataRepository,
        super(const HomeState()) {
    on<_Init>(_init);
  }

  Future<void> _init(
    _Init event,
    Emitter<HomeState> emit,
  ) async {
    await _blockchainCoinDataRepository.loadBlockchainCoinData(event.pin);
  }
}
