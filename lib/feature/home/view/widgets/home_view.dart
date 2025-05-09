import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solana_wallet_sample/common/extensions/context_extensions.dart';
import 'package:solana_wallet_sample/feature/home/bloc/home_bloc.dart';
import 'package:solana_wallet_sample/feature/pin/enter_pin/view/enter_pin_screen.dart';

class HomeView extends StatefulWidget {
  final String? pin;

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
  void initState() {
    super.initState();
    if (widget.pin == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _requestPin();
      });
    } else {
      context.read<HomeBloc>().add(HomeEvent.init(pin: widget.pin!));
    }
  }

  @override
  Widget build(BuildContext context) => BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          if (state.action == HomeAction.pinEntered) {
            //Navigator.of(context).pop(state.enteredPin!);
          }
        },
        builder: (context, state) => Scaffold(
          body: Center(
            child: ElevatedButton(onPressed: _onAddPressed, child: const Text('Add')),
          ),
        ),
      );

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
      homeBloc.add(HomeEvent.init(pin: pin));
    }
  }

  Future<void> init(int pin) async {
    final HomeBloc homeBloc = context.read<HomeBloc>();
    final String? pin = await context.push(const EnterPinScreen());
    if (pin != null) {
      homeBloc.add(HomeEvent.init(pin: pin));
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
