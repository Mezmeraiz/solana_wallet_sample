import 'package:shared_preferences/shared_preferences.dart';

abstract interface class CommonStorage {
  bool get blockchainCoinDataLoaded;

  String? get address;

  Future<bool> setBlockchainCoinDataLoaded(bool blockchainCoinDataLoaded);

  Future<bool> setAddress(String address);

  Future<void> clearStorage();
}

class CommonStorageImpl implements CommonStorage {
  final SharedPreferences _sharedPreferences;

  const CommonStorageImpl({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences;

  static const _blockchainCoinDataLoadedKey = 'blockchainCoinDataLoadedKey';
  static const _addressKey = 'addressKey';

  @override
  String? get address => _sharedPreferences.getString(_addressKey);

  @override
  Future<bool> setAddress(String address) => _sharedPreferences.setString(
        _addressKey,
        address,
      );

  @override
  bool get blockchainCoinDataLoaded => _sharedPreferences.getBool(_blockchainCoinDataLoadedKey) ?? false;

  @override
  Future<bool> setBlockchainCoinDataLoaded(bool blockchainCoinDataLoaded) => _sharedPreferences.setBool(
        _blockchainCoinDataLoadedKey,
        blockchainCoinDataLoaded,
      );

  @override
  Future<void> clearStorage() async {
    await _sharedPreferences.remove(_blockchainCoinDataLoadedKey);
    await _sharedPreferences.remove(_addressKey);
  }
}
