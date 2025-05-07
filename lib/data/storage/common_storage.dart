import 'package:shared_preferences/shared_preferences.dart';

abstract interface class CommonStorage {
  bool get blockchainCoinDataLoaded;

  Future<bool> setBlockchainCoinDataLoaded(bool blockchainCoinDataLoaded);
}

class CommonStorageImpl implements CommonStorage {
  final SharedPreferences _sharedPreferences;

  const CommonStorageImpl({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences;

  static const _blockchainCoinDataLoadedKey = 'blockchainCoinDataLoadedKey';

  @override
  bool get blockchainCoinDataLoaded => _sharedPreferences.getBool(_blockchainCoinDataLoadedKey) ?? false;

  @override
  Future<bool> setBlockchainCoinDataLoaded(bool blockchainCoinDataLoaded) => _sharedPreferences.setBool(
        _blockchainCoinDataLoadedKey,
        blockchainCoinDataLoaded,
      );
}
