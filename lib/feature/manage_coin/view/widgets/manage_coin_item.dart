import 'package:flutter/material.dart';
import 'package:solana_wallet_sample/data/model/coin/base_coin_data.dart';
import 'package:solana_wallet_sample/view/coin/coin_image.dart';

const _avatarSize = 48.0;

class ManageCoinItem extends StatelessWidget {
  final BaseCoinData baseCoinData;
  final bool isSelected;
  final ValueChanged<bool?> onChanged;

  const ManageCoinItem({
    super.key,
    required this.baseCoinData,
    required this.isSelected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) => ListTile(
        leading: CoinImage(
          size: _avatarSize,
          imageUrl: baseCoinData.iconUrl,
        ),
        title: Text(
          baseCoinData.ticker,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: Switch(
          value: isSelected,
          onChanged: onChanged,
        ),
      );
}
