import 'package:flutter/material.dart';

class LoadingPlaceHolder extends StatelessWidget {
  const LoadingPlaceHolder({super.key});

  @override
  Widget build(BuildContext context) => const Center(child: CircularProgressIndicator());
}
