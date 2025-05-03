import 'package:secure_vault/secure_vault.dart';

abstract interface class WelcomeRepository {
  Future<void> saveSeedPhrase({
    required String seedPhrase,
    required String pin,
  });

  Future<bool> checkPin(String pin);

  Future<String?> loadSeed(String pin);

  Future<void> resetVault();
}

class WelcomeRepositoryImpl extends WelcomeRepository {
  final SecureVault _secureVault;

  WelcomeRepositoryImpl({
    required SecureVault secureVault,
  }) : _secureVault = secureVault;

  @override
  Future<void> saveSeedPhrase({
    required String seedPhrase,
    required String pin,
  }) =>
      _secureVault.firstSetup(
        seed: seedPhrase,
        pin: pin,
      );

  @override
  Future<bool> checkPin(String pin) => _secureVault.checkPin(pin);

  @override
  Future<String?> loadSeed(String pin) => _secureVault.loadSeed(pin);

  @override
  Future<void> resetVault() => _secureVault.resetVault();
}
