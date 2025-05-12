import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:solana_wallet_sample/common/assets/asset_icons.dart';

class IconPlaceHolder extends StatelessWidget {
  const IconPlaceHolder({super.key});

  @override
  Widget build(BuildContext context) => Center(
        child: SvgPicture.asset(
          AssetIcons.coin,
          fit: BoxFit.scaleDown,
        ),
      );
}
