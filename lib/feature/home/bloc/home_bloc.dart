import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:solana_wallet_sample/data/model/coin/blockchain_coin_data.dart';
import 'package:solana_wallet_sample/data/repository/base_coin_data_repository.dart';
import 'package:solana_wallet_sample/data/repository/blockchain_coin_data_repository.dart';
import 'package:solana_wallet_sample/data/repository/wallet_repository.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final WalletRepository _walletRepository;
  final BlockchainCoinDataRepository _blockchainCoinDataRepository;
  final BaseCoinDataRepository _baseCoinDataRepository;

  HomeBloc({
    required WalletRepository walletRepository,
    required BlockchainCoinDataRepository blockchainCoinDataRepository,
    required BaseCoinDataRepository baseCoinDataRepository,
  })  : _walletRepository = walletRepository,
        _blockchainCoinDataRepository = blockchainCoinDataRepository,
        _baseCoinDataRepository = baseCoinDataRepository,
        super(const HomeState()) {
    on<_Init>(_init);
  }

  late final StreamSubscription<void> _blockchainDataSub;

  void _initSubs() {
    _blockchainDataSub = CombineLatestStream.list<dynamic>([
      _blockchainCoinDataRepository.blockchainCoinDataStream,
      _blockchainCoinDataRepository.activeCoinsStream,
      _baseCoinDataRepository.stateStream.where((s) => s != BaseCoinDataRepositoryState.loading),
    ]).listen((values) {
      add(
        HomeEvent.dataChanged(
          blockchainData: List.of(values[0] as List<BlockchainCoinData>),
          activeCoinIds: List.of(values[1] as List<String>),
        ),
      );
    });
  }

  Future<void> _init(
    _Init event,
    Emitter<HomeState> emit,
  ) async {
    _initSubs();

    final coinDataLoaded = _baseCoinDataRepository.stateStream.firstWhere(
      (state) => state != BaseCoinDataRepositoryState.loading,
    );

    final blockchainDataLoaded = _blockchainCoinDataRepository.blockchainCoinDataUpdatedStream.firstWhere(
      (state) => state,
    );

    await Future.wait([
      coinDataLoaded,
      blockchainDataLoaded,
    ]);
  }

  @override
  Future<void> close() {
    _blockchainDataSub.cancel();
    return super.close();
  }
}
