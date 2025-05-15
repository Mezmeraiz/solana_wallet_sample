part of 'send_transaction_bloc.dart';

@freezed
class SendTransactionEvent with _$SendTransactionEvent {
  const factory SendTransactionEvent.init() = _Init;
  const factory SendTransactionEvent.addressChanged(String address) = _AddressChanged;
  const factory SendTransactionEvent.amountChanged(String amount) = _AmountChanged;
  const factory SendTransactionEvent.calculateFee() = _CalculateFee;
  const factory SendTransactionEvent.pinReceived(String pin) = _PinReceived;
}
