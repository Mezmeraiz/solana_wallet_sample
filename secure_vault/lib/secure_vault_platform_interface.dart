import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:secure_vault/secure_vault_method_channel.dart';

abstract class SecureVaultPlatform extends PlatformInterface {
  SecureVaultPlatform() : super(token: _token);

  static final Object _token = Object();

  static SecureVaultPlatform _instance = MethodChannelSecureVault();

  static SecureVaultPlatform get instance => _instance;

  static set instance(SecureVaultPlatform newInstance) {
    PlatformInterface.verifyToken(newInstance, _token);
    _instance = newInstance;
  }

  Future<void> setup({
    required String seed,
    required String pin,
  });

  Future<bool> checkPin(String pin);

  Future<String?> getSeed(String pin);

  Future<void> resetVault();

  Future<int> remainingAttempts();

  Future<bool?> hasSeed();
}
