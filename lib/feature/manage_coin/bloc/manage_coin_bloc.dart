import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solana_wallet_sample/data/model/coin/base_coin_data.dart';
import 'package:solana_wallet_sample/data/repository/base_coin_data_repository.dart';
import 'package:solana_wallet_sample/data/repository/blockchain_coin_data_repository.dart';
import 'package:solana_wallet_sample/data/repository/wallet_repository.dart';

part 'manage_coin_bloc.freezed.dart';
part 'manage_coin_event.dart';
part 'manage_coin_state.dart';

const int loadLimit = 20;

class ManageCoinBloc extends Bloc<ManageCoinEvent, ManageCoinState> {
  final WalletRepository _walletRepository;
  final BaseCoinDataRepository _baseCoinDataRepository;
  final BlockchainCoinDataRepository _blockchainCoinDataRepository;

  ManageCoinBloc({
    required WalletRepository walletRepository,
    required BaseCoinDataRepository baseCoinDataRepository,
    required BlockchainCoinDataRepository blockchainCoinDataRepository,
  })  : _walletRepository = walletRepository,
        _baseCoinDataRepository = baseCoinDataRepository,
        _blockchainCoinDataRepository = blockchainCoinDataRepository,
        super(const ManageCoinState()) {
    on<_Init>(_init);
    on<_Load>(_load);
    on<_LoadMore>(_loadMore);
    on<_Search>(_search);
    on<_CoinStateChanged>(_coinStateChanged);
  }

  void _init(
    _Init event,
    Emitter<ManageCoinState> emit,
  ) async {
    final Set<String> activeIds = _blockchainCoinDataRepository.activeCoinsStream.value;
    final List<BaseCoinData> coins = await _baseCoinDataRepository.getBaseCoinDataByIds(
      ids: activeIds,
    );

    emit(
      state.copyWith(
        initialCoins: coins,
        initialCoinIds: activeIds,
        activeCoinIds: activeIds,
      ),
    );

    add(const ManageCoinEvent.load());
  }

  void _search(
    _Search event,
    Emitter<ManageCoinState> emit,
  ) async {
    emit(
      state.copyWith(
        query: event.query,
        offset: 0,
      ),
    );

    add(const ManageCoinEvent.load());
  }

  void _loadMore(
    _LoadMore event,
    Emitter<ManageCoinState> emit,
  ) async {
    if (state.loadingStatus == ManageCoinLoadingStatus.loading) {
      return;
    }

    final List<BaseCoinData> filteredCoins = await _baseCoinDataRepository.getBaseCoinData(
      limit: loadLimit,
      offset: state.offset,
      query: state.query,
      excludeIds: state.initialCoinIds,
    );

    emit(
      state.copyWith(
        offset: state.offset + loadLimit,
        coins: [
          ...List.of(state.coins),
          ...filteredCoins,
        ],
        loadingStatus: ManageCoinLoadingStatus.idle,
      ),
    );
  }

  Future<void> _load(
    _Load event,
    Emitter<ManageCoinState> emit,
  ) async {
    emit(
      state.copyWith(
        loadingStatus: ManageCoinLoadingStatus.loading,
      ),
    );

    final List<BaseCoinData> filteredCoins = await _baseCoinDataRepository.getBaseCoinData(
      limit: loadLimit,
      offset: 0,
      query: state.query,
      excludeIds: state.initialCoinIds,
    );

    final query = state.query.toLowerCase();

    final List<BaseCoinData> filteredInitialCoins =
        state.initialCoins.where((coin) => coin.ticker.toLowerCase().contains(query)).toList();

    final coins = [
      ...filteredInitialCoins,
      ...filteredCoins,
    ];

    emit(
      state.copyWith(
        coins: coins,
        offset: state.offset + loadLimit,
        loadingStatus: ManageCoinLoadingStatus.idle,
      ),
    );
  }

  void _coinStateChanged(
    _CoinStateChanged event,
    Emitter<ManageCoinState> emit,
  ) async {
    final Set<String> activeIds = state.activeCoinIds.toSet();

    if (event.isSelected) {
      activeIds.add(event.coinId);
    } else {
      activeIds.remove(event.coinId);
    }

    await _blockchainCoinDataRepository.setActiveCoins(activeIds);

    emit(
      state.copyWith(
        activeCoinIds: activeIds,
      ),
    );
  }
}
