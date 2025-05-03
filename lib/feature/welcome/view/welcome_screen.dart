import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solana_wallet_sample/common/extensions/context_extensions.dart';
import 'package:solana_wallet_sample/feature/welcome/view/widgets/welcome_view.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => context.blocFactory.welcomeBloc(),
        child: const WelcomeView(),
      );
}
