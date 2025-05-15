import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solana_wallet_sample/data/model/coin/base_coin_data.dart';
import 'package:solana_wallet_sample/data/model/coin/blockchain_coin_data.dart';
import 'package:solana_wallet_sample/data/repository/base_coin_data_repository.dart';
import 'package:solana_wallet_sample/data/repository/blockchain_coin_data_repository.dart';
import 'package:solana_wallet_sample/domain/wallet_service.dart';

part 'coin_info_bloc.freezed.dart';
part 'coin_info_event.dart';
part 'coin_info_state.dart';

const int loadLimit = 20;

class CoinInfoBloc extends Bloc<CoinInfoEvent, CoinInfoState> {
  final WalletService _walletService;
  final BaseCoinDataRepository _baseCoinDataRepository;
  final BlockchainCoinDataRepository _blockchainCoinDataRepository;

  CoinInfoBloc({
    required WalletService walletService,
    required BaseCoinDataRepository baseCoinDataRepository,
    required BlockchainCoinDataRepository blockchainCoinDataRepository,
    required String coinId,
  })  : _walletService = walletService,
        _baseCoinDataRepository = baseCoinDataRepository,
        _blockchainCoinDataRepository = blockchainCoinDataRepository,
        super(
          CoinInfoState(
            coinId: coinId,
            baseCoinData: BaseCoinData.empty(),
          ),
        ) {
    on<_Init>(_init);
    on<_BlockchainDataChanged>(_blockchainDataChanged);
  }

  late final StreamSubscription<List<BlockchainCoinData>> _blockchainDataSub;

  void _initSubs() {
    _blockchainDataSub = _blockchainCoinDataRepository.blockchainCoinDataStream.listen(
      (values) => add(
        CoinInfoEvent.blockchainDataChanged(
          values.firstWhereOrNull((coin) => coin.id == state.coinId),
        ),
      ),
    );
  }

  void _init(
    _Init event,
    Emitter<CoinInfoState> emit,
  ) async {
    _initSubs();

    final BaseCoinData baseData = (await _baseCoinDataRepository.getBaseCoinDataByIds(
      ids: {state.coinId},
    ))
        .first;

    final String address = _walletService.getAddress();

    emit(
      state.copyWith(
        baseCoinData: baseData,
        loadingStatus: CoinInfoLoadingStatus.idle,
        address: address,
      ),
    );
  }

  void _blockchainDataChanged(
    _BlockchainDataChanged event,
    Emitter<CoinInfoState> emit,
  ) =>
      emit(
        state.copyWith(
          blockchainCoinData: event.data,
        ),
      );

  @override
  Future<void> close() {
    _blockchainDataSub.cancel();
    return super.close();
  }
}
