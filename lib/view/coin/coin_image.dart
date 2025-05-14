import 'package:flutter/material.dart';
import 'package:solana_wallet_sample/view/coin/coin_place_holder.dart';
import 'package:solana_wallet_sample/view/network_image/base_network_image.dart';

class CoinImage extends StatelessWidget {
  final String? imageUrl;
  final double size;

  const CoinImage({
    super.key,
    this.imageUrl,
    required this.size,
  });

  @override
  Widget build(BuildContext context) => CircleAvatar(
        radius: size / 2,
        child: ClipOval(
          child: BaseNetworkImage.square(
            imageUrl: imageUrl,
            size: size,
            placeholder: const CoinPlaceHolder(),
          ),
        ),
      );
}
