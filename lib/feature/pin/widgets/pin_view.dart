import 'package:flutter/material.dart';
import 'package:solana_wallet_sample/feature/pin/common/pin_constatnts.dart';
import 'package:solana_wallet_sample/feature/pin/widgets/pin_box.dart';

class PinView extends StatefulWidget {
  final String pin;
  final String title;
  final String? error;
  final ValueChanged<String> onPinChanged;

  const PinView({
    super.key,
    required this.pin,
    required this.onPinChanged,
    required this.title,
    this.error,
  });

  @override
  State<PinView> createState() => _PinViewState();
}

class _PinViewState extends State<PinView> {
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _controller = TextEditingController();

  @override
  void didUpdateWidget(covariant PinView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.pin != oldWidget.pin) {
      _controller.text = widget.pin;
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => FocusScope.of(context).requestFocus(_focusNode),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.title,
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  PinConstants.pinLength * 2 - 1,
                  (index) {
                    if (index.isOdd) {
                      return const SizedBox(width: 12);
                    } else {
                      final boxIndex = index ~/ 2;
                      return PinBox(isFilled: boxIndex < widget.pin.length);
                    }
                  },
                ),
              ),
              const SizedBox(height: 20),
              if (widget.error != null)
                Text(
                  widget.error!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.red),
                ),
              SizedBox(
                width: 0,
                height: 0,
                child: TextField(
                  focusNode: _focusNode,
                  autofocus: true,
                  controller: _controller,
                  maxLength: PinConstants.pinLength,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  decoration: const InputDecoration(counterText: ''),
                  onChanged: widget.onPinChanged,
                ),
              ),
            ],
          ),
        ),
      );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
