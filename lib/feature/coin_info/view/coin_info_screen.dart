import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solana_wallet_sample/common/extensions/context_extensions.dart';
import 'package:solana_wallet_sample/feature/coin_info/bloc/coin_info_bloc.dart';
import 'package:solana_wallet_sample/feature/coin_info/view/widgets/coin_info_view.dart';

class CoinInfoScreen extends StatelessWidget {
  final String coinId;

  const CoinInfoScreen({
    super.key,
    required this.coinId,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => context.blocFactory.coinInfoBloc(coinId)..add(const CoinInfoEvent.init()),
        child: const CoinInfoView(),
      );
}
