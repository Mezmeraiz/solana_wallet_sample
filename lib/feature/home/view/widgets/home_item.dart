import 'package:flutter/material.dart';
import 'package:solana_wallet_sample/feature/home/view/widgets/icon_place_holder.dart';
import 'package:solana_wallet_sample/feature/home/vm/active_coin_vm.dart';
import 'package:solana_wallet_sample/view/network_image/base_network_image.dart';

const _avatarSize = 18.0;

class HomeItem extends StatelessWidget {
  final ActiveCoinVM activeCoin;

  const HomeItem({
    super.key,
    required this.activeCoin,
  });

  @override
  Widget build(BuildContext context) => ListTile(
        leading: CircleAvatar(
          radius: _avatarSize / 2,
          child: BaseNetworkImage.square(
            imageUrl: activeCoin.iconUrl,
            size: _avatarSize,
            placeholder: const IconPlaceHolder(),
          ),
        ),
        title: Text(
          activeCoin.ticker,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: Text(
          activeCoin.balance.toString(),
          style: const TextStyle(fontSize: 16),
        ),
      );
}
