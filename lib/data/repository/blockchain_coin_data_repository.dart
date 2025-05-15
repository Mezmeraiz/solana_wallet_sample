import 'package:rxdart/rxdart.dart';
import 'package:secure_vault/secure_vault.dart';
import 'package:solana_wallet_sample/common/constants.dart';
import 'package:solana_wallet_sample/data/api/dto/token_accounts_by_owner_response.dart';
import 'package:solana_wallet_sample/data/api/solana_api.dart';
import 'package:solana_wallet_sample/data/database/dao/coin_dao.dart';
import 'package:solana_wallet_sample/data/model/coin/base_coin_data.dart';
import 'package:solana_wallet_sample/data/model/coin/blockchain_coin_data.dart';
import 'package:solana_wallet_sample/data/repository/wallet_repository.dart';
import 'package:solana_wallet_sample/data/storage/common_storage.dart';
import 'package:solana_wallet_sample/ffigen_output/generated_bindings.dart';

abstract class BlockchainCoinDataRepository {
  ValueStream<List<BlockchainCoinData>> get blockchainCoinDataStream;

  ValueStream<Set<String>> get activeCoinsStream;

  Future<void> loadBlockchainCoinData(String pin);

  Future<void> setActiveCoins(Set<String> ids);

  void reset();
}

class BlockchainCoinDataRepositoryImpl implements BlockchainCoinDataRepository {
  final SolanaApi _solanaApi;
  final CoinDao _coinDao;
  final SecureVault _secureVault;
  final CommonStorage _commonStorage;
  final WalletRepository _walletRepository;

  BlockchainCoinDataRepositoryImpl({
    required SolanaApi solanaApi,
    required CoinDao coinDao,
    required SecureVault secureVault,
    required CommonStorage commonStorage,
    required WalletRepository walletRepository,
  })  : _solanaApi = solanaApi,
        _coinDao = coinDao,
        _secureVault = secureVault,
        _commonStorage = commonStorage,
        _walletRepository = walletRepository;

  final BehaviorSubject<List<BlockchainCoinData>> _blockchainCoinDataController = BehaviorSubject.seeded([]);

  final BehaviorSubject<Set<String>> _activeCoinsController = BehaviorSubject.seeded({});

  @override
  ValueStream<List<BlockchainCoinData>> get blockchainCoinDataStream => _blockchainCoinDataController.stream;

  @override
  ValueStream<Set<String>> get activeCoinsStream => _activeCoinsController.stream;

  @override
  Future<void> loadBlockchainCoinData(String pin) async {
    _blockchainCoinDataController.add(await _coinDao.getBlockchainCoinData());

    final String? seed = await _secureVault.loadSeed(pin);
    if (seed == null) {
      throw Exception('Seed not found');
    }

    final wallet = _walletRepository.createWithMnemonic(seed);
    final address = _walletRepository.getAddressForCoin(
      wallet: wallet,
      coinType: TWCoinType.TWCoinTypeSolana,
    );

    _walletRepository.walletDelete(wallet);

    final res = await Future.wait([
      _getCoinBlockchainCoinData(address: address),
      _getTokensBlockchainCoinData(address: address),
    ]);

    final blockchainCoinData = [
      res[0] as BlockchainCoinData,
      ...res[1] as List<BlockchainCoinData>,
    ];

    _coinDao.saveBlockchainCoinData(blockchainCoinData);

    if (!_commonStorage.blockchainCoinDataLoaded) {
      await _coinDao.saveActiveCoins(blockchainCoinData.map((e) => e.id).toList());
      await _commonStorage.setBlockchainCoinDataLoaded(true);
    }

    _activeCoinsController.add(await _coinDao.getActiveCoins());
    _blockchainCoinDataController.add(blockchainCoinData);
  }

  Future<List<BlockchainCoinData>> _getTokensBlockchainCoinData({
    required String address,
  }) async {
    final List<TokenAccountsByOwnerResponse> tokens = await _solanaApi.getTokenAccountsByOwner(
      url: Constants.solanaUrl,
      address: address,
    );

    final tokenMap = {
      for (final t in tokens) t.contractAddress: t,
    };

    final List<BaseCoinData> base = await _coinDao.getBaseCoinDataByContracts(
      tokenMap.keys.toList(),
    );

    final List<BlockchainCoinData> tokensBlockchainCoinData = [
      for (final b in base)
        if (tokenMap.containsKey(b.contractAddress))
          BlockchainCoinData(
            id: b.id,
            contractAddress: b.contractAddress,
            balance: tokenMap[b.contractAddress]!.balance,
            decimals: tokenMap[b.contractAddress]!.decimals,
          )
    ];

    return tokensBlockchainCoinData;
  }

  Future<BlockchainCoinData> _getCoinBlockchainCoinData({
    required String address,
  }) async {
    final int solBalance = await _solanaApi.getBalance(
      url: Constants.solanaUrl,
      address: address,
    );

    return BlockchainCoinData(
      id: Constants.solanaCoinId,
      balance: BigInt.from(solBalance),
      decimals: Constants.solanaCoinDecimals,
    );
  }

  @override
  Future<void> setActiveCoins(Set<String> ids) async {
    await _coinDao.saveActiveCoins(ids);
    _activeCoinsController.add(ids);
  }

  @override
  void reset() {
    _blockchainCoinDataController.add([]);
    _activeCoinsController.add({});
  }
}
