import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solana_wallet_sample/common/extensions/context_extensions.dart';
import 'package:solana_wallet_sample/feature/pin/enter_pin/view/widgets/enter_pin_view.dart';

class EnterPinScreen extends StatelessWidget {
  const EnterPinScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => context.blocFactory.enterPinBloc(),
        child: const EnterPinView(),
      );
}
