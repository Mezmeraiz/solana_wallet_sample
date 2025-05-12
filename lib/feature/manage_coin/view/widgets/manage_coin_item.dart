import 'package:flutter/material.dart';
import 'package:solana_wallet_sample/common/utils.dart';
import 'package:solana_wallet_sample/data/model/coin/base_coin_data.dart';
import 'package:solana_wallet_sample/feature/home/view/widgets/icon_place_holder.dart';
import 'package:solana_wallet_sample/feature/home/vm/active_coin_vm.dart';
import 'package:solana_wallet_sample/view/network_image/base_network_image.dart';

const _avatarSize = 18.0;

class HomeItem extends StatelessWidget {
  final BaseCoinData baseCoinData;
  final bool isSelected;
  final ValueChanged<bool?> onChanged;

  const HomeItem({
    super.key,
    required this.baseCoinData,
    required this.isSelected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) => ListTile(
        leading: CircleAvatar(
          radius: _avatarSize / 2,
          child: BaseNetworkImage.square(
            imageUrl: baseCoinData.iconUrl,
            size: _avatarSize,
            placeholder: const IconPlaceHolder(),
          ),
        ),
        title: Text(
          baseCoinData.ticker,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: Checkbox(
          value: isSelected,
          onChanged: onChanged,
        ),
      );
}
