import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solana_wallet_sample/common/extensions/context_extensions.dart';
import 'package:solana_wallet_sample/feature/send_transaction/bloc/send_transaction_bloc.dart';
import 'package:solana_wallet_sample/feature/send_transaction/view/widgets/send_transaction_view.dart';

class SendTransactionScreen extends StatelessWidget {
  final String coinId;

  const SendTransactionScreen({
    super.key,
    required this.coinId,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => context.blocFactory.sendTransactionBloc(coinId)..add(const SendTransactionEvent.init()),
        child: const SendTransactionView(),
      );
}
