import 'package:rxdart/rxdart.dart';
import 'package:secure_vault/secure_vault.dart';
import 'package:solana_wallet_sample/data/api/solana_api.dart';
import 'package:solana_wallet_sample/data/database/dao/coin_dao.dart';
import 'package:solana_wallet_sample/data/model/coin/blockchain_coin_data.dart';
import 'package:solana_wallet_sample/data/repository/wallet_repository.dart';
import 'package:solana_wallet_sample/data/storage/common_storage.dart';
import 'package:solana_wallet_sample/ffigen_output/generated_bindings.dart';

const String _solanaUrl = 'https://api.mainnet-beta.solana.com';

abstract class BlockchainCoinDataRepository {
  ValueStream<List<BlockchainCoinData>> get stream;

  Future<void> loadBlockchainCoinData(String pin);
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

  @override
  ValueStream<List<BlockchainCoinData>> get stream => _controller.stream;

  final BehaviorSubject<List<BlockchainCoinData>> _controller = BehaviorSubject<List<BlockchainCoinData>>.seeded([]);

  @override
  Future<void> loadBlockchainCoinData(String pin) async {
    final String? seed = await _secureVault.loadSeed(pin);
    if (seed == null) {
      throw Exception('Seed not found');
    }

    final wallet = _walletRepository.createWithMnemonic(seed);
    final address = _walletRepository.getAddressForCoin(
      wallet: wallet,
      coinType: TWCoinType.TWCoinTypeSolana,
    );
    final x = _solanaApi.getTokenAccountsByOwner(
      url: _solanaUrl,
      address: address,
    );
    final z = _solanaApi.getBalance(
      url: _solanaUrl,
      address: address,
    );
    print(z);
    // final List<BlockchainCoinData> coins = await _coinDao.getBlockchainCoinDataByIds(
    //   await _coinDao.getActiveCoins(),
    // );
    //
    // if (coins.isNotEmpty) {
    //   _controller.add(coins);
    // } else {
    //   final List<BlockchainCoinData> coins = await _solanaApi.getBlockchainCoinData();
    //   await _coinDao.saveBlockchainCoinData(coins);
    //   _controller.add(coins);
    // }
  }
}
