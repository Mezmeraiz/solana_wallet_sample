import 'package:secure_vault/secure_vault.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:solana_wallet_sample/data/database/app_database.dart';
import 'package:solana_wallet_sample/data/http_wrapper/http_wrapper.dart';
import 'package:solana_wallet_sample/data/storage/common_storage.dart';
import 'package:solana_wallet_sample/ffigen_output/generated_bindings.dart';

abstract interface class DependencyFactory {
  HttpWrapper get httpWrapper;

  TrustWalletCore get core;

  SecureVault get secureVault;

  CommonStorage get commonStorage;

  AppDatabase get appDatabase;

  void dispose();
}

class DependencyFactoryImpl implements DependencyFactory {
  final SharedPreferences _sharedPreferences;
  final TrustWalletCore _core;

  DependencyFactoryImpl({
    required SharedPreferences sharedPreferences,
    required TrustWalletCore core,
  })  : _core = core,
        _sharedPreferences = sharedPreferences;

  HttpWrapper? _httpWrapper;

  SecureVault? _secureVault;

  AppDatabase? _appDatabase;

  @override
  HttpWrapper get httpWrapper => _httpWrapper ??= HttpWrapperImpl();

  @override
  SecureVault get secureVault => _secureVault ??= SecureVault();

  @override
  TrustWalletCore get core => _core;

  @override
  AppDatabase get appDatabase => _appDatabase ?? AppDatabase();

  @override
  CommonStorage get commonStorage => CommonStorageImpl(
        sharedPreferences: _sharedPreferences,
      );

  @override
  void dispose() {
    //TODO: implement action
  }
}
