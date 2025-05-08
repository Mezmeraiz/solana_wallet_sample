import 'package:flutter/services.dart';

import 'secure_vault_platform_interface.dart';

class MethodChannelSecureVault extends SecureVaultPlatform {
  static const _channel = MethodChannel('secure_vault');

  @override
  Future<void> setup({required String seed, required String pin}) => _channel.invokeMethod(
        'setup',
        {
          'seed': seed,
          'pin': pin,
        },
      );

  @override
  Future<bool> checkPin(String pin) async =>
      (await _channel.invokeMethod<bool>(
        'checkPin',
        {
          'pin': pin,
        },
      )) ??
      false;

  @override
  Future<String?> getSeed(String pin) => _channel.invokeMethod<String>(
        'getSeed',
        {
          'pin': pin,
        },
      );

  @override
  Future<void> resetVault() => _channel.invokeMethod('resetVault');

  @override
  Future<int> remainingAttempts() async => await _channel.invokeMethod<int>('remainingAttempts') ?? 0;

  @override
  Future<bool?> hasSeed() => _channel.invokeMethod<bool>(
        'hasSeed',
      );
}
