import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solana_wallet_sample/common/extensions/context_extensions.dart';
import 'package:solana_wallet_sample/feature/home/view/widgets/home_view.dart';

class HomeScreen extends StatelessWidget {
  final bool requestPin;

  const HomeScreen({
    super.key,
    required this.requestPin,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => context.blocFactory.homeBloc(),
        child: HomeView(
          requestPin: requestPin,
        ),
      );
}
