import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solana_wallet_sample/common/extensions/context_extensions.dart';
import 'package:solana_wallet_sample/feature/pin/set_pin/view/widgets/set_pin_view.dart';

class SetPinScreen extends StatelessWidget {
  final int pinLength = 6;

  const SetPinScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => context.blocFactory.setPinBloc(
          pinLength: pinLength,
        ),
        child: SetPinView(
          pinLength: pinLength,
        ),
      );
}
