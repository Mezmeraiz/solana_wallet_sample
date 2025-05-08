import 'package:secure_vault/secure_vault.dart';

abstract interface class PinRepository {
  Future<bool> checkPin(String pin);

  Future<int> remainingAttempts();

  Future<void> resetVault();

  Future<String?> loadSeed(String pin);

  Future<void> firstSetup({
    required String seed,
    required String pin,
  });

  Future<bool?> hasSeed();
}

class PinRepositoryImpl extends PinRepository {
  final SecureVault _secureVault;

  PinRepositoryImpl({
    required SecureVault secureVault,
  }) : _secureVault = secureVault;

  @override
  Future<bool> checkPin(String pin) => _secureVault.checkPin(pin);

  @override
  Future<int> remainingAttempts() => _secureVault.remainingAttempts();

  @override
  Future<void> resetVault() => _secureVault.resetVault();

  @override
  Future<String?> loadSeed(String pin) => _secureVault.loadSeed(pin);

  @override
  Future<void> firstSetup({
    required String seed,
    required String pin,
  }) =>
      _secureVault.firstSetup(seed: seed, pin: pin);

  @override
  Future<bool?> hasSeed() => _secureVault.hasSeed();
}
