import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solana_wallet_sample/common/extensions/context_extensions.dart';
import 'package:solana_wallet_sample/feature/home/bloc/home_bloc.dart';
import 'package:solana_wallet_sample/feature/pin/enter_pin/view/enter_pin_screen.dart';
import 'package:solana_wallet_sample/feature/pin/enter_pin/view/widgets/enter_pin_view.dart';

class HomeView extends StatefulWidget {
  final bool requestPin;

  const HomeView({
    super.key,
    required this.requestPin,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.requestPin) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _requestPin();
      });
    }
  }

  @override
  Widget build(BuildContext context) => BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          if (state.action == HomeAction.pinEntered) {
            Navigator.of(context).pop(state.enteredPin!);
          }
        },
        builder: (context, state) => Scaffold(
          body: Center(
            child: ElevatedButton(onPressed: _onAddPressed, child: const Text('Add')),
          ),
        ),
      );

  void _onPinChanged(String value) => context.read<HomeBloc>().add(HomeEvent.pinChanged(pin: value));

  void _onAddPressed() {
    // final homeBloc = context.read<HomeBloc>();
    // if (widget.pin != null) {
    //   homeBloc.add(HomeEvent.pinChanged(pin: widget.pin!));
    // } else {
    //   homeBloc.add(const HomeEvent.pinChanged(pin: ''));
    // }
  }

  Future<void> _requestPin() async {
    final HomeBloc homeBloc = context.read<HomeBloc>();
    final String? pin = await context.push(const EnterPinScreen());
    if (pin != null) {
      homeBloc.add(HomeEvent.pinChanged(pin: pin));
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
