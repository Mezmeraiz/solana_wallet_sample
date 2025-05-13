import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:solana_wallet_sample/common/extensions/common_extensions.dart';
import 'package:solana_wallet_sample/data/model/coin/base_coin_data.dart';
import 'package:solana_wallet_sample/data/model/coin/blockchain_coin_data.dart';
import 'package:solana_wallet_sample/data/repository/base_coin_data_repository.dart';
import 'package:solana_wallet_sample/data/repository/blockchain_coin_data_repository.dart';
import 'package:solana_wallet_sample/data/repository/wallet_repository.dart';
import 'package:solana_wallet_sample/feature/home/vm/active_coin_vm.dart';

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
    on<_DataChanged>(_dataChanged);
  }

  late final StreamSubscription<void> _blockchainDataSub;

  void _initSubs() {
    _blockchainDataSub = CombineLatestStream.list<dynamic>([
      _blockchainCoinDataRepository.blockchainCoinDataStream,
      _blockchainCoinDataRepository.activeCoinsStream,
      _baseCoinDataRepository.stateStream
          .where((s) => s != BaseCoinDataRepositoryState.loading)
          .startWith(_baseCoinDataRepository.stateStream.value),
    ]).listen((values) {
      add(
        HomeEvent.dataChanged(
          blockchainData: List.of(values[0] as List<BlockchainCoinData>),
          activeCoinIds: Set.of(values[1] as Set<String>),
        ),
      );
    });
  }

  Future<void> _init(
    _Init event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(
        progressStatus: ProgressStatus.loading,
      ),
    );

    _initSubs();

    final coinDataLoaded = _baseCoinDataRepository.stateStream.firstWhereOrValue(
      (state) => state != BaseCoinDataRepositoryState.loading,
    );

    final blockchainDataUpdated = _blockchainCoinDataRepository.loadBlockchainCoinData(event.pin);

    await Future.wait([
      coinDataLoaded,
      blockchainDataUpdated,
    ]);

    emit(
      state.copyWith(
        progressStatus: ProgressStatus.idle,
      ),
    );
  }

  Future<void> _dataChanged(
    _DataChanged event,
    Emitter<HomeState> emit,
  ) async {
    final List<BaseCoinData> baseData = await _baseCoinDataRepository.getBaseCoinDataByIds(ids: event.activeCoinIds);
    final Map<String, BlockchainCoinData> blockchainData = {
      for (final coin in event.blockchainData) coin.id: coin,
    };

    final List<ActiveCoinVM> activeCoins = baseData.map(
      (coin) {
        return ActiveCoinVM(
          id: coin.id,
          ticker: coin.ticker,
          iconUrl: coin.iconUrl,
          contractAddress: coin.contractAddress,
          type: coin.type,
          balance: blockchainData[coin.id]?.balance,
          decimals: blockchainData[coin.id]?.decimals,
        );
      },
    ).toList();

    emit(
      state.copyWith(
        activeCoins: activeCoins,
      ),
    );
  }

  @override
  Future<void> close() {
    _blockchainDataSub.cancel();
    return super.close();
  }
}
