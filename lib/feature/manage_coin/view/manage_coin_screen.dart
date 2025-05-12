import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solana_wallet_sample/common/extensions/context_extensions.dart';
import 'package:solana_wallet_sample/feature/manage_coin/view/widgets/manage_coin_view.dart';

class ManageCoinScreen extends StatelessWidget {
  final int pinLength = 6;

  const ManageCoinScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => context.blocFactory.manageCoinBloc(),
        child: const ManageCoinView(),
      );
}
