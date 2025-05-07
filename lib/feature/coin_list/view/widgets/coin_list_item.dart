import 'package:flutter/material.dart';

class TokenListItem extends StatelessWidget {
  final String iconUrl;
  final String ticker;
  final String amount;

  const TokenListItem({
    super.key,
    required this.iconUrl,
    required this.ticker,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) => ListTile(
        leading: CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage(iconUrl),
          backgroundColor: Colors.grey[200],
        ),
        title: Text(
          ticker.toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: Text(
          amount,
          style: const TextStyle(fontSize: 16),
        ),
      );
}
