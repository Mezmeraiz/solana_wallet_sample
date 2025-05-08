import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solana_wallet_sample/feature/pin/set_pin/bloc/set_pin_bloc.dart';
import 'package:solana_wallet_sample/feature/pin/widgets/pin_view.dart';

class SetPinView extends StatefulWidget {
  const SetPinView({
    super.key,
  });

  @override
  State<SetPinView> createState() => _SetPinViewState();
}

class _SetPinViewState extends State<SetPinView> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) => BlocConsumer<SetPinBloc, SetPinState>(
        listener: (context, state) {
          if (state.action == SetPinAction.pinEntered) {
            Navigator.of(context).pop(state.enteredPin!);
          }
        },
        builder: (context, state) => PinView(
          pin: state.pin,
          title: state.enteredPin == null ? 'Enter password' : 'Confirm password',
          error: state.status == SetPinStatus.pinDoesNotMatch ? 'Passwords do not match' : null,
          onPinChanged: _onPinChanged,
        ),
      );

  void _onPinChanged(String value) => context.read<SetPinBloc>().add(SetPinEvent.pinChanged(pin: value));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
