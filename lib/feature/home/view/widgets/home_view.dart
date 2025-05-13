import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solana_wallet_sample/common/extensions/context_extensions.dart';
import 'package:solana_wallet_sample/feature/home/bloc/home_bloc.dart';
import 'package:solana_wallet_sample/feature/home/view/widgets/home_item.dart';
import 'package:solana_wallet_sample/feature/manage_coin/view/manage_coin_screen.dart';
import 'package:solana_wallet_sample/feature/pin/enter_pin/view/enter_pin_screen.dart';
import 'package:solana_wallet_sample/view/progress_wrapper.dart';

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
          // if (state.action == HomeAction.pinEntered) {
          //   //Navigator.of(context).pop(state.enteredPin!);
          // }
        },
        builder: (context, state) => Scaffold(
          body: ProgressWrapper(
            isLoading: state.progressStatus == ProgressStatus.loading,
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: state.activeCoins.length,
                    itemBuilder: (context, index) {
                      final coin = state.activeCoins[index];
                      return HomeItem(
                        activeCoin: coin,
                        onTap: () => _onCoinPressed(coin.id),
                      );
                    },
                  ),
                ),
                InkWell(
                  onTap: _onTapManageCoins,
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text('Manage coins'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  void _onCoinPressed(String coinId) {}

  void _onTapManageCoins() => context.push(const ManageCoinScreen());

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
