import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solana_wallet_sample/common/extensions/context_extensions.dart';
import 'package:solana_wallet_sample/feature/pin/enter_pin/view/enter_pin_screen.dart';
import 'package:solana_wallet_sample/feature/send_transaction/bloc/send_transaction_bloc.dart';

class SendTransactionView extends StatelessWidget {
  const SendTransactionView({super.key});

  @override
  Widget build(BuildContext context) => BlocListener<SendTransactionBloc, SendTransactionState>(
        listener: (context, state) {
          switch (state.action) {
            case FeeCalculatedAction(:final fee):
              _onFeeCalculated(
                context: context,
                fee: fee,
                amount: state.amount,
                address: state.address,
              );

            case NoneAction():
              break;
          }
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Send transaction'),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 16),
                  TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter address',
                    ),
                    onChanged: (value) => _onAddressChanged(context, value),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter amount',
                    ),
                    onChanged: (value) => _onAmountChanged(context, value),
                  ),
                  const SizedBox(height: 16),
                  BlocBuilder<SendTransactionBloc, SendTransactionState>(
                    buildWhen: (previous, current) => previous.loadingStatus != current.loadingStatus,
                    builder: (context, state) => state.loadingStatus == SendTransactionLoadingStatus.idle
                        ? ElevatedButton(
                            onPressed: () => _onSendPressed(context),
                            child: const Text('Send'),
                          )
                        : const CircularProgressIndicator(),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  void _onSendPressed(BuildContext context) =>
      context.read<SendTransactionBloc>().add(const SendTransactionEvent.send());

  void _onAddressChanged(
    BuildContext context,
    String value,
  ) =>
      context.read<SendTransactionBloc>().add(SendTransactionEvent.addressChanged(value));

  void _onAmountChanged(
    BuildContext context,
    String value,
  ) =>
      context.read<SendTransactionBloc>().add(SendTransactionEvent.amountChanged(value));

  void _onFeeCalculated({
    required BuildContext context,
    required int fee,
    required String amount,
    required String address,
  }) =>
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text('Confirm transaction'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Amount: $amount'),
              const SizedBox(height: 16),
              Text('Fee: $fee'),
              const SizedBox(height: 16),
              Text('To address: $address'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => _requestPin(context),
              child: const Text('CONFIRM'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('CANCEL'),
            ),
          ],
        ),
      );

  Future<void> _requestPin(BuildContext context) async {
    final SendTransactionBloc bloc = context.read<SendTransactionBloc>();
    final String? pin = await context.push(const EnterPinScreen());
    if (pin != null) {
      bloc.add(SendTransactionEvent.pinReceived(pin));
    }
  }
}
