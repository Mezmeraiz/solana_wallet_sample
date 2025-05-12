import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:solana_wallet_sample/common/assets/asset_icons.dart';

class ErrorPlaceHolder extends StatelessWidget {
  const ErrorPlaceHolder({super.key});

  @override
  Widget build(BuildContext context) => Center(
        child: SvgPicture.asset(
          AssetIcons.errorCircle,
          fit: BoxFit.scaleDown,
        ),
      );
}
