import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solana_wallet_sample/feature/coin_list/bloc/coin_list_bloc.dart';

class CoinListView extends StatefulWidget {
  const CoinListView({super.key});

  @override
  State<CoinListView> createState() => _CoinListViewState();
}

class _CoinListViewState extends State<CoinListView> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) => BlocConsumer<CoinListBloc, CoinListState>(
        listener: (context, state) {
          if (state.action == CoinListAction.pinEntered) {
            Navigator.of(context).pop(state.enteredPin!);
          }
        },
        builder: (context, state) => ListView(),
      );

  void _onPinChanged(String value) => context.read<CoinListBloc>().add(CoinListEvent.pinChanged(pin: value));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
