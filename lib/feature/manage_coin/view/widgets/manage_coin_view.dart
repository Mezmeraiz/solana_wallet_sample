import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solana_wallet_sample/feature/manage_coin/bloc/manage_coin_bloc.dart';

class ManageCoinView extends StatefulWidget {
  const ManageCoinView({super.key});

  @override
  State<ManageCoinView> createState() => _ManageCoinViewState();
}

class _ManageCoinViewState extends State<ManageCoinView> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) => BlocConsumer<ManageCoinBloc, ManageCoinState>(
        listener: (context, state) {
          if (state.action == ManageCoinAction.pinEntered) {
            Navigator.of(context).pop(state.enteredPin!);
          }
        },
        builder: (context, state) => ListView(),
      );

  void _onPinChanged(String value) => context.read<ManageCoinBloc>().add(ManageCoinEvent.pinChanged(pin: value));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
