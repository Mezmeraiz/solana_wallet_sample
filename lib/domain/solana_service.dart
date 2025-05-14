import 'dart:ffi';

import 'package:fixnum/fixnum.dart' as fixnum;
import 'package:secure_vault/secure_vault.dart';
import 'package:solana_wallet_sample/common/utils.dart';
import 'package:solana_wallet_sample/data/api/common/constants.dart';
import 'package:solana_wallet_sample/data/api/dto/token_accounts_by_owner_response.dart';
import 'package:solana_wallet_sample/data/api/solana_api.dart';
import 'package:solana_wallet_sample/data/model/coin/base_coin_data.dart';
import 'package:solana_wallet_sample/data/model/coin/blockchain_coin_data.dart';
import 'package:solana_wallet_sample/data/model/coin/coin_type.dart';
import 'package:solana_wallet_sample/data/repository/wallet_repository.dart';
import 'package:solana_wallet_sample/data/storage/common_storage.dart';
import 'package:solana_wallet_sample/ffigen_output/generated_bindings.dart';
import 'package:solana_wallet_sample/generated_protos/Solana.pb.dart' as solana;

const int lamportsPerSignature = 5000;

abstract interface class SolanaService {
  Future<int> calculateFee({
    required BaseCoinData baseCoinData,
    required String toAddress,
  });

  Future<String> sendTransaction({
    required CoinType type,
    required BlockchainCoinData blockchainCoinData,
    required String toAddress,
    required String amount,
    required String pin,
  });
}

class SolanaServiceImpl implements SolanaService {
  final SolanaApi _solanaApi;
  final WalletRepository _walletRepository;
  final CommonStorage _commonStorage;
  final SecureVault _secureVault;

  const SolanaServiceImpl({
    required SolanaApi solanaApi,
    required WalletRepository walletRepository,
    required CommonStorage commonStorage,
    required SecureVault secureVault,
  })  : _commonStorage = commonStorage,
        _walletRepository = walletRepository,
        _secureVault = secureVault,
        _solanaApi = solanaApi;

  @override
  Future<int> calculateFee({
    required BaseCoinData baseCoinData,
    required String toAddress,
  }) =>
      switch (baseCoinData.type) {
        CoinType.coin => Future.value(lamportsPerSignature),
        CoinType.token => _calculateTokenFee(
            baseCoinData,
            toAddress,
          ),
      };

  Future<int> _calculateTokenFee(
    BaseCoinData baseCoinData,
    String toAddress,
  ) async {
    final List<TokenAccountsByOwnerResponse> accounts = await _solanaApi.getTokenAccountsByOwner(
      url: DefaultNodeUrl.solanaUrl,
      address: toAddress,
    );

    final bool hasAccount = accounts.any(
      (account) => account.contractAddress == baseCoinData.contractAddress,
    );

    if (hasAccount) {
      final ataFee = await _solanaApi.getMinimumBalanceForRentExemption(
        url: DefaultNodeUrl.solanaUrl,
      );

      return ataFee + lamportsPerSignature;
    }

    return lamportsPerSignature;
  }

  @override
  Future<String> sendTransaction({
    required CoinType type,
    required BlockchainCoinData blockchainCoinData,
    required String toAddress,
    required String amount,
    required String pin,
  }) async {
    final String? seedPhrase = await _secureVault.loadSeed(pin);

    if (seedPhrase == null) {
      throw Exception('Seed phrase not found');
    }

    final tnx = type == CoinType.coin
        ? await _getCoinTransaction(
            toAddress,
            amount,
            seedPhrase,
            blockchainCoinData.decimals,
          )
        : await _getTokenTransaction(
            toAddress,
            amount,
            seedPhrase,
            blockchainCoinData,
          );

    final response = await _solanaApi.sendTransaction(
      url: DefaultNodeUrl.solanaUrl,
      transaction: tnx,
    );

    if (response.isEmpty) {
      throw Exception('Transaction failed');
    }

    return response;
  }

  // Future<String> _sendCoinTransaction(
  //   String toAddress,
  //   String amount,
  //   String seedPhrase,
  //   BlockchainCoinData blockchainCoinData,
  // ) async {
  //   final tnx = await _getCoinTransaction(
  //     toAddress,
  //     amount,
  //     seedPhrase,
  //     blockchainCoinData.decimals,
  //   );
  //
  //   final response = await _solanaApi.sendTransaction(
  //     url: DefaultNodeUrl.solanaUrl,
  //     transaction: tnx,
  //   );
  //
  //   if (response.isEmpty) {
  //     throw Exception('Transaction failed');
  //   }
  //
  //   return response;
  // }

  Future<String> _getCoinTransaction(
    String toAddress,
    String amount,
    String seedPhrase,
    int decimals,
  ) async {
    final amountInLamports = Utils.valueToMinUnit(
      double.parse(amount),
      decimals,
    );

    final List<int> privateKey = _getPrivateKey(seedPhrase);

    final blockHash = await _solanaApi.getLatestBlockhash(
      url: DefaultNodeUrl.solanaUrl,
    );

    final input = solana.SigningInput(
      recentBlockhash: blockHash,
      privateKey: privateKey,
      transferTransaction: solana.Transfer(
        recipient: toAddress,
        value: fixnum.Int64(
          amountInLamports.toInt(),
        ),
      ),
    );

    final sign = _walletRepository.sign(input.writeToBuffer(), TWCoinType.TWCoinTypeSolana);
    final output = solana.SigningOutput.fromBuffer(sign);
    final String base64Transaction = output.encoded;

    return base64Transaction;
  }

  Future<String> _getTokenTransaction(
    String toAddress,
    String amount,
    String seedPhrase,
    BlockchainCoinData blockchainCoinData,
  ) async {
    final recipientAccountsFuture = _solanaApi.getTokenAccountsByOwner(
      url: DefaultNodeUrl.solanaUrl,
      address: toAddress,
    );

    final senderAccountsFuture = _solanaApi.getTokenAccountsByOwner(
      url: DefaultNodeUrl.solanaUrl,
      address: _commonStorage.address!,
    );

    final latestHashFuture = _solanaApi.getLatestBlockhash(
      url: DefaultNodeUrl.solanaUrl,
    );

    final result = await Future.wait([
      recipientAccountsFuture,
      senderAccountsFuture,
      latestHashFuture,
    ]);

    final recipientAccounts = result[0] as List<TokenAccountsByOwnerResponse>;
    final senderAccounts = result[1] as List<TokenAccountsByOwnerResponse>;
    final latestHash = result[2] as String;

    final amountInMinUnits = Utils.valueToMinUnit(
      double.parse(amount),
      blockchainCoinData.decimals,
    );

    final List<int> privateKey = _getPrivateKey(seedPhrase);

    final String senderAta = senderAccounts.first.pubkey;

    final solana.SigningInput input;

    if (recipientAccounts.isNotEmpty) {
      final String recipientAta = recipientAccounts.first.pubkey;

      input = solana.SigningInput(
        recentBlockhash: latestHash,
        privateKey: privateKey,
        tokenTransferTransaction: solana.TokenTransfer(
          tokenMintAddress: blockchainCoinData.contractAddress!,
          recipientTokenAddress: recipientAta,
          senderTokenAddress: senderAta,
          amount: fixnum.Int64(amountInMinUnits.toInt()),
          decimals: blockchainCoinData.decimals,
        ),
      );
    } else {
      final recipientAta = _walletRepository.defaultTokenAddress(
        toAddress,
        blockchainCoinData.contractAddress!,
      );

      input = solana.SigningInput(
        recentBlockhash: latestHash,
        privateKey: privateKey,
        createAndTransferTokenTransaction: solana.CreateAndTransferToken(
          recipientMainAddress: toAddress,
          tokenMintAddress: blockchainCoinData.contractAddress!,
          recipientTokenAddress: recipientAta,
          senderTokenAddress: senderAta,
          amount: fixnum.Int64(amountInMinUnits.toInt()),
          decimals: blockchainCoinData.decimals,
        ),
      );
    }

    final sign = _walletRepository.sign(input.writeToBuffer(), TWCoinType.TWCoinTypeSolana);
    final output = solana.SigningOutput.fromBuffer(sign);
    final base64Transaction = output.encoded;

    return base64Transaction;
  }

  List<int> _getPrivateKey(String seedPhrase) {
    final Pointer<TWHDWallet> wallet = _walletRepository.createWithMnemonic(seedPhrase);

    final privateKey = _walletRepository
        .getKeyForCoin(
          coinType: TWCoinType.TWCoinTypeSolana,
          wallet: wallet,
        )
        .toList();

    _walletRepository.walletDelete(wallet);

    return privateKey;
  }
}
