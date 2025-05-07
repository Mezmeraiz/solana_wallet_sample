import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solana_wallet_sample/common/extensions/context_extensions.dart';
import 'package:solana_wallet_sample/feature/coin_list/view/widgets/coin_list_view.dart';

class CoinListScreen extends StatelessWidget {
  final int pinLength = 6;

  const CoinListScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => context.blocFactory.coinListBloc(),
        child: const CoinListView(),
      );
}
