import 'package:flutter/material.dart';
import 'package:solana_wallet_sample/feature/home/view/home_screen.dart';
import 'package:solana_wallet_sample/feature/welcome/view/welcome_screen.dart';

class App extends StatelessWidget {
  final bool hasSeedPhrase;

  const App({
    super.key,
    required this.hasSeedPhrase,
  });

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Solana Wallet Sample',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: hasSeedPhrase ? const HomeScreen() : const WelcomeScreen(),
      );
}
