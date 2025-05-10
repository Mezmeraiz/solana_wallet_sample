import 'package:flutter/material.dart';

enum ProgressWrapperIndicatorType {
  linear,
  circular,
}

class ProgressWrapper extends StatelessWidget {
  final bool isLoading;
  final Widget child;
  final Color? color;
  final ProgressWrapperIndicatorType indicatorType;

  const ProgressWrapper({
    super.key,
    required this.isLoading,
    required this.child,
    this.color,
    this.indicatorType = ProgressWrapperIndicatorType.linear,
  });

  @override
  Widget build(BuildContext context) => Stack(
        fit: StackFit.passthrough,
        children: [
          child,
          if (isLoading)
            indicatorType == ProgressWrapperIndicatorType.circular
                ? const Center(
                    child: SizedBox(
                      height: 48,
                      width: 48,
                      child: CircularProgressIndicator(
                        strokeCap: StrokeCap.round,
                      ),
                    ),
                  )
                : Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: LinearProgressIndicator(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
        ],
      );
}
