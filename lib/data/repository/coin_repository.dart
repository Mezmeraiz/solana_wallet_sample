import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:flutter/foundation.dart';
import 'package:solana_wallet_sample/common/extensions/wallet_extension.dart';
import 'package:solana_wallet_sample/data/api/coin_api.dart';
import 'package:solana_wallet_sample/data/database/dao/coin_dao.dart';
import 'package:solana_wallet_sample/data/model/coin/base_coin_data.dart';
import 'package:solana_wallet_sample/data/model/coin/icon_coin_data.dart';
import 'package:solana_wallet_sample/ffigen_output/generated_bindings.dart';

abstract class CoinRepository {
  Future<void> init();
}

class CoinRepositoryImpl implements CoinRepository {
  final CoinApi _coinApi;
  final CoinDao _coinDao;

  CoinRepositoryImpl({
    required CoinApi coinApi,
    required CoinDao coinDao,
  })  : _coinApi = coinApi,
        _coinDao = coinDao;

  @override
  Future<void> init() async {
    final bool baseDataLoaded = (await _coinDao.getBaseCoinData(
      limit: 1,
      offset: 1,
    ))
        .isNotEmpty;

    if (!baseDataLoaded) {
      await _loadCoinBaseData();
    }

    _loadImageCoinData();
  }

  Future<List<BaseCoinData>> _loadCoinBaseData() async {
    final coins = await _coinApi.getBaseCoinData();
    await _coinDao.saveBaseCoinData(coins: coins);

    return coins;
  }

  Future<void> _loadImageCoinData() async {
    while (true) {
      final List<String> ids = await _coinDao.getCoinIdsWithoutIcon();
      print(ids.length);
      if (ids.isEmpty) break;

      final List<IconCoinData> coins = await _coinApi.getCoinIcons(ids);
      await Future.delayed(const Duration(seconds: 10));
      await _coinDao.updateCoinIcons(coins);
    }
  }
}
