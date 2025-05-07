import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solana_wallet_sample/feature/home/bloc/home_bloc.dart';

class HomeView extends StatefulWidget {
  final int? pin;

  const HomeView({
    super.key,
    required this.pin,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) => BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          if (state.action == HomeAction.pinEntered) {
            Navigator.of(context).pop(state.enteredPin!);
          }
        },
        builder: (context, state) => Center(
          child: ElevatedButton(onPressed: _onAddPressed, child: const Text('Add')),
        ),
      );

  void _onPinChanged(String value) => context.read<HomeBloc>().add(HomeEvent.pinChanged(pin: value));

  void _onAddPressed() {
    final homeBloc = context.read<HomeBloc>();
    if (widget.pin != null) {
      homeBloc.add(HomeEvent.pinChanged(pin: widget.pin!));
    } else {
      homeBloc.add(const HomeEvent.pinChanged(pin: ''));
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
