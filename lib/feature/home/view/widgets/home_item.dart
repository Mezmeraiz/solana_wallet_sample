import 'package:flutter/material.dart';
import 'package:solana_wallet_sample/common/utils.dart';
import 'package:solana_wallet_sample/feature/home/vm/active_coin_vm.dart';
import 'package:solana_wallet_sample/view/coin/coin_image.dart';

const _avatarSize = 48.0;

class HomeItem extends StatelessWidget {
  final ActiveCoinVM activeCoin;
  final VoidCallback onTap;

  const HomeItem({
    super.key,
    required this.activeCoin,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: onTap,
        child: ListTile(
          leading: CoinImage(
            size: _avatarSize,
            imageUrl: activeCoin.iconUrl,
          ),
          title: Text(
            activeCoin.ticker,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          trailing: Text(
            activeCoin.balance != null && activeCoin.decimals != null
                ? Utils.minUnitToValue(activeCoin.balance!, activeCoin.decimals!).toString()
                : '0',
            style: const TextStyle(fontSize: 16),
          ),
        ),
      );
}
