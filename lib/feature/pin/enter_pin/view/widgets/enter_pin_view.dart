import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solana_wallet_sample/common/extensions/context_extensions.dart';
import 'package:solana_wallet_sample/feature/pin/enter_pin/bloc/enter_pin_bloc.dart';
import 'package:solana_wallet_sample/feature/pin/widgets/pin_view.dart';
import 'package:solana_wallet_sample/feature/welcome/view/welcome_screen.dart';

class EnterPinView extends StatefulWidget {
  const EnterPinView({
    super.key,
  });

  @override
  State<EnterPinView> createState() => _EnterPinViewState();
}

class _EnterPinViewState extends State<EnterPinView> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) => BlocConsumer<EnterPinBloc, EnterPinState>(
        listener: (context, state) {
          if (state.action == EnterPinAction.pinEntered) {
            Navigator.of(context).pop(state.enteredPin!);
          } else if (state.action == EnterPinAction.logout) {
            context.pushAndRemoveUntilFirst(
              const WelcomeScreen(),
            );
          }
        },
        builder: (context, state) => PinView(
          pin: state.pin,
          title: 'Enter password',
          error: state.status == EnterPinStatus.wrongPin ? 'Wrong Password' : null,
          onPinChanged: _onPinChanged,
        ),
      );

  void _onPinChanged(String value) => context.read<EnterPinBloc>().add(EnterPinEvent.pinChanged(pin: value));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
