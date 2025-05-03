import 'package:flutter/material.dart';
import 'package:solana_wallet_sample/feature/welcome/view/welcome_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Solana Wallet Sample',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const WelcomeScreen(),
      );
}
