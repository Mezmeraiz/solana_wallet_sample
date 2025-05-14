import 'package:secure_vault/secure_vault.dart';
import 'package:solana_wallet_sample/data/repository/wallet_repository.dart';
import 'package:solana_wallet_sample/data/storage/common_storage.dart';
import 'package:solana_wallet_sample/ffigen_output/generated_bindings.dart';

abstract interface class WalletService {
  Future<bool> saveAddress({
    required String pin,
  });

  String getAddress();
}

class WalletServiceImpl implements WalletService {
  final SecureVault _secureVault;
  final CommonStorage _commonStorage;
  final WalletRepository _walletRepository;

  WalletServiceImpl({
    required SecureVault secureVault,
    required CommonStorage commonStorage,
    required WalletRepository walletRepository,
  })  : _secureVault = secureVault,
        _walletRepository = walletRepository,
        _commonStorage = commonStorage;

  @override
  Future<bool> saveAddress({
    required String pin,
  }) async {
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

    return _commonStorage.setAddress(address);
  }

  @override
  String getAddress() {
    final String? address = _commonStorage.address;
    if (address == null) {
      throw Exception('Address not found');
    }

    return address;
  }
}
