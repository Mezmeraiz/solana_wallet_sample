import 'package:flutter/material.dart';

class PinBox extends StatelessWidget {
  final bool isFilled;

  const PinBox({
    super.key,
    required this.isFilled,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 50,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: isFilled
              ? const Icon(
                  Icons.circle,
                  size: 12,
                  color: Colors.black,
                )
              : const SizedBox.shrink(),
        ),
      ),
    );
  }
}
