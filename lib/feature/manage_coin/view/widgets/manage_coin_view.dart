import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solana_wallet_sample/common/constants.dart';
import 'package:solana_wallet_sample/feature/manage_coin/bloc/manage_coin_bloc.dart';
import 'package:solana_wallet_sample/feature/manage_coin/view/widgets/manage_coin_item.dart';

class ManageCoinView extends StatefulWidget {
  const ManageCoinView({super.key});

  @override
  State<ManageCoinView> createState() => _ManageCoinViewState();
}

class _ManageCoinViewState extends State<ManageCoinView> {
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      print(
          'pix = ${_scrollController.position.pixels} max = ${_scrollController.position.maxScrollExtent - Constants.loadMoreOffset}');

      if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - Constants.loadMoreOffset) {
        context.read<ManageCoinBloc>().add(const ManageCoinEvent.loadMore());
      }
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Manage Coins'),
          // actions: [
          //   IconButton(
          //     icon: const Icon(Icons.check),
          //     onPressed: () => Navigator.of(context).pop(),
          //   ),
          // ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                controller: _searchController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search...',
                  border: OutlineInputBorder(),
                ),
                onChanged: _onSearchChanged,
              ),
            ),
            Expanded(
              child: BlocBuilder<ManageCoinBloc, ManageCoinState>(
                buildWhen: (prev, curr) => prev.coins != curr.coins || prev.activeCoinIds != curr.activeCoinIds,
                builder: (context, state) => ListView.builder(
                  controller: _scrollController,
                  itemCount: state.coins.length,
                  itemBuilder: (context, index) {
                    final coin = state.coins[index];

                    return ManageCoinItem(
                      baseCoinData: coin,
                      isSelected: state.activeCoinIds.contains(coin.id),
                      onChanged: (isSelected) => _onCoinStateChanged(
                        coin.id,
                        isSelected ?? false,
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      );

  void _onSearchChanged(String value) => context.read<ManageCoinBloc>().add(
        ManageCoinEvent.search(
          query: value,
        ),
      );

  void _onCoinStateChanged(
    String coinId,
    bool isSelected,
  ) =>
      context.read<ManageCoinBloc>().add(
            ManageCoinEvent.coinStateChanged(
              coinId: coinId,
              isSelected: isSelected,
            ),
          );
}
