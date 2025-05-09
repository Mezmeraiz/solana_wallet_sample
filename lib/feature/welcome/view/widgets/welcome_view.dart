import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solana_wallet_sample/common/extensions/context_extensions.dart';
import 'package:solana_wallet_sample/feature/home/view/home_screen.dart';
import 'package:solana_wallet_sample/feature/pin/set_pin/view/set_pin_screen.dart';
import 'package:solana_wallet_sample/feature/welcome/bloc/welcome/welcome_bloc.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) => BlocListener<WelcomeBloc, WelcomeState>(
        listener: (context, state) {
          if (state.action == WelcomeAction.requestPin) {
            _requestPin();
          } else if (state.action == WelcomeAction.dataSaved) {
            context.pushReplacement(
              HomeScreen(
                pin: state.pin,
              ),
            );
          } else if (state.action == WelcomeAction.saveError) {
            context.showSnackBar(message: 'Failed to save data');
          }
        },
        child: Scaffold(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  BlocBuilder<WelcomeBloc, WelcomeState>(
                    builder: (context, state) => TextField(
                      controller: _controller,
                      maxLines: 2,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: 'Enter seed phrase',
                        error: state.status == WelcomeStatus.seedPhraseError ? const Text('Invalid seed phrase') : null,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: _onAddPressed,
                    child: const Text('Add'),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  void _requestPin() async {
    final welcomeBloc = context.read<WelcomeBloc>();
    final String? pin = await context.push(const SetPinScreen());
    if (pin != null) {
      welcomeBloc.add(WelcomeEvent.pinChanged(pin: pin));
    }
  }

  void _onAddPressed() => context.read<WelcomeBloc>().add(
        WelcomeEvent.seedPhraseChanged(
          seedPhrase: _controller.text,
        ),
      );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
