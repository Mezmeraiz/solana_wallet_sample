library secure_vault;

import 'secure_vault_platform_interface.dart';

class SecureVault {
  Future<void> firstSetup({
    required String seed,
    required String pin,
  }) =>
      SecureVaultPlatform.instance.setup(seed: seed, pin: pin);

  Future<bool> checkPin(String pin) => SecureVaultPlatform.instance.checkPin(pin);

  Future<String?> loadSeed(String pin) => SecureVaultPlatform.instance.getSeed(pin);

  Future<void> resetVault() => SecureVaultPlatform.instance.resetVault();

  Future<int> remainingAttempts() => SecureVaultPlatform.instance.remainingAttempts();

  Future<bool?> hasSeed() => SecureVaultPlatform.instance.hasSeed();
}
