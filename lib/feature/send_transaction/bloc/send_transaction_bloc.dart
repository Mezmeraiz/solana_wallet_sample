import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solana_wallet_sample/data/model/coin/base_coin_data.dart';
import 'package:solana_wallet_sample/data/model/coin/blockchain_coin_data.dart';
import 'package:solana_wallet_sample/data/repository/base_coin_data_repository.dart';
import 'package:solana_wallet_sample/data/repository/blockchain_coin_data_repository.dart';
import 'package:solana_wallet_sample/domain/solana_service.dart';

part 'send_transaction_bloc.freezed.dart';
part 'send_transaction_event.dart';
part 'send_transaction_state.dart';

const int loadLimit = 20;

class SendTransactionBloc extends Bloc<SendTransactionEvent, SendTransactionState> {
  final SolanaService _solanaService;
  final BaseCoinDataRepository _baseCoinDataRepository;
  final BlockchainCoinDataRepository _blockchainCoinDataRepository;

  SendTransactionBloc({
    required SolanaService solanaService,
    required BaseCoinDataRepository baseCoinDataRepository,
    required BlockchainCoinDataRepository blockchainCoinDataRepository,
    required String coinId,
  })  : _solanaService = solanaService,
        _baseCoinDataRepository = baseCoinDataRepository,
        _blockchainCoinDataRepository = blockchainCoinDataRepository,
        super(
          SendTransactionState(
            coinId: coinId,
            baseCoinData: BaseCoinData.empty(),
            blockchainCoinData: BlockchainCoinData.empty(),
          ),
        ) {
    on<_Init>(_init);
    on<_AddressChanged>(_addressChanged);
    on<_AmountChanged>(_amountChanged);
    on<_CalculateFee>(_calculateFee);
    on<_PinReceived>(_pinReceived);
  }

  void _init(
    _Init event,
    Emitter<SendTransactionState> emit,
  ) async {
    final BaseCoinData baseData = (await _baseCoinDataRepository.getBaseCoinDataByIds(
      ids: {state.coinId},
    ))
        .first;

    final BlockchainCoinData? blockchainData = _blockchainCoinDataRepository.blockchainCoinDataStream.value
        .firstWhereOrNull((coin) => coin.id == state.coinId);

    if (blockchainData == null) {
      throw Exception('BlockchainCoinData not found');
    }

    emit(
      state.copyWith(
        baseCoinData: baseData,
        blockchainCoinData: blockchainData,
      ),
    );
  }

  void _addressChanged(
    _AddressChanged event,
    Emitter<SendTransactionState> emit,
  ) =>
      emit(
        state.copyWith(
          address: event.address,
        ),
      );

  void _amountChanged(
    _AmountChanged event,
    Emitter<SendTransactionState> emit,
  ) =>
      emit(
        state.copyWith(
          amount: event.amount,
        ),
      );

  Future<void> _pinReceived(
    _PinReceived event,
    Emitter<SendTransactionState> emit,
  ) async {
    emit(
      state.copyWith(
        loadingStatus: SendTransactionLoadingStatus.loading,
      ),
    );

    try {
      final String tnx = await _solanaService.sendTransaction(
        type: state.baseCoinData.type,
        blockchainCoinData: state.blockchainCoinData,
        toAddress: state.address,
        amount: state.amount,
        pin: event.pin,
      );

      emit(state.copyWith(action: SendTransactionAction.transactionSuccess(tnx)));
    } catch (e, s) {
      print(s);
      emit(state.copyWith(action: const SendTransactionAction.tnxError()));
    } finally {
      emit(state.copyWith(action: const SendTransactionAction.none()));
      emit(state.copyWith(loadingStatus: SendTransactionLoadingStatus.idle));
    }
  }

  Future<void> _calculateFee(
    _CalculateFee event,
    Emitter<SendTransactionState> emit,
  ) async {
    final int fee = await _solanaService.calculateFee(
      baseCoinData: state.baseCoinData,
      toAddress: state.address,
    );

    emit(state.copyWith(action: SendTransactionAction.feeCalculated(fee)));
    emit(state.copyWith(action: const SendTransactionAction.none()));
  }
}
