part of 'send_transaction_bloc.dart';

@freezed
class SendTransactionState with _$SendTransactionState {
  const factory SendTransactionState({
    required String coinId,
    required BaseCoinData baseCoinData,
    required BlockchainCoinData blockchainCoinData,
    @Default('') String amount,
    @Default('') String address,
    @Default(SendTransactionLoadingStatus.idle) SendTransactionLoadingStatus loadingStatus,
    @Default(SendTransactionAction.none()) SendTransactionAction action,
  }) = _SendTransactionState;
}

enum SendTransactionLoadingStatus {
  idle,
  loading,
}

@freezed
sealed class SendTransactionAction with _$SendTransactionAction {
  const factory SendTransactionAction.none() = NoneAction;

  const factory SendTransactionAction.tnxError() = tnxErrorAction;

  const factory SendTransactionAction.feeCalculated(int fee) = FeeCalculatedAction;

  const factory SendTransactionAction.transactionSuccess(String tnx) = TransactionSuccessAction;
}
