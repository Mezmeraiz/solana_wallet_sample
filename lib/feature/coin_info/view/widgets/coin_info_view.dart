import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solana_wallet_sample/common/utils.dart';
import 'package:solana_wallet_sample/feature/coin_info/bloc/coin_info_bloc.dart';
import 'package:solana_wallet_sample/view/coin/coin_image.dart';

class CoinInfoView extends StatelessWidget {
  const CoinInfoView({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<CoinInfoBloc, CoinInfoState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(state.baseCoinData.ticker),
            ),
            body: state.loadingStatus == CoinInfoLoadingStatus.idle
                ? Column(
                    children: [
                      const SizedBox(height: 16),
                      CoinImage(
                        size: 96,
                        imageUrl: state.baseCoinData.iconUrl,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        state.blockchainCoinData != null
                            ? Utils.minUnitToValue(
                                state.blockchainCoinData!.balance,
                                state.blockchainCoinData!.decimals,
                              ).toString()
                            : '0',
                        style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: state.blockchainCoinData != null ? _onSendPressed : null,
                                child: const Text('Send'),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () => _onReceivePressed(
                                  context,
                                  state.address,
                                ),
                                child: const Text('Receive'),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                : const SizedBox.shrink(),
          );
        },
      );

  void _onSendPressed() {}

  void _onReceivePressed(
    BuildContext context,
    String address,
  ) =>
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text('Coin address'),
          content: Text(address),
          actions: [
            TextButton(
              onPressed: () {
                Clipboard.setData(ClipboardData(text: address));
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Address hash copied to clipboard')),
                );
                Navigator.of(context).pop();
              },
              child: const Text('COPY'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('CANCEL'),
            ),
          ],
        ),
      );
}
