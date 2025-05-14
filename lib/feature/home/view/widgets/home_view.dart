import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solana_wallet_sample/common/extensions/context_extensions.dart';
import 'package:solana_wallet_sample/feature/coin_info/view/coin_info_screen.dart';
import 'package:solana_wallet_sample/feature/home/bloc/home_bloc.dart';
import 'package:solana_wallet_sample/feature/home/view/widgets/home_item.dart';
import 'package:solana_wallet_sample/feature/manage_coin/view/manage_coin_screen.dart';
import 'package:solana_wallet_sample/feature/pin/enter_pin/view/enter_pin_screen.dart';
import 'package:solana_wallet_sample/feature/welcome/view/welcome_screen.dart';
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
  Widget build(BuildContext context) => BlocListener<HomeBloc, HomeState>(
        listener: (context, state) {
          if (state.action == HomeAction.logout) {
            context.pushReplacement(const WelcomeScreen());
          }
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Coins'),
            actions: [
              IconButton(
                icon: const Icon(Icons.logout),
                onPressed: _onTapLogout,
              ),
            ],
          ),
          body: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
            return ProgressWrapper(
              isLoading: state.progressStatus == ProgressStatus.loading,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                      separatorBuilder: (_, __) => const Divider(),
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
                        child: Text(
                          'Manage coins',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      );

  void _onCoinPressed(String coinId) => context.push(CoinInfoScreen(coinId: coinId));

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

  void _onTapLogout() {
    final HomeBloc homeBloc = context.read<HomeBloc>();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Logout'),
        content: const Text('Are you sure you want to logout?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              homeBloc.add(const HomeEvent.logout());
            },
            child: const Text('Logout'),
          ),
        ],
      ),
    );
  }
}
