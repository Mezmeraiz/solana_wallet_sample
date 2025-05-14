import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solana_wallet_sample/data/model/coin/base_coin_data.dart';
import 'package:solana_wallet_sample/data/model/coin/blockchain_coin_data.dart';
import 'package:solana_wallet_sample/data/repository/base_coin_data_repository.dart';
import 'package:solana_wallet_sample/data/repository/blockchain_coin_data_repository.dart';
import 'package:solana_wallet_sample/data/repository/wallet_repository.dart';
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
    // on<_Load>(_load);
    // on<_LoadMore>(_loadMore);
    // on<_Search>(_search);
    // on<_CoinStateChanged>(_coinStateChanged);
  }

  void _init(
    _Init event,
    Emitter<CoinInfoState> emit,
  ) async {
    final BaseCoinData baseData = (await _baseCoinDataRepository.getBaseCoinDataByIds(
      ids: {state.coinId},
    ))
        .first;
    final BlockchainCoinData? blockchainData = _blockchainCoinDataRepository.blockchainCoinDataStream.value
        .firstWhereOrNull((coin) => coin.id == state.coinId);

    final String address = _walletService.getAddress();

    emit(
      state.copyWith(
        baseCoinData: baseData,
        blockchainCoinData: blockchainData,
        loadingStatus: CoinInfoLoadingStatus.idle,
        address: address,
      ),
    );
  }
}
