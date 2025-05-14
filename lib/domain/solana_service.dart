import 'dart:ffi';

import 'package:fixnum/fixnum.dart' as fixnum;
import 'package:solana_wallet_sample/common/utils.dart';
import 'package:solana_wallet_sample/data/api/common/constants.dart';
import 'package:solana_wallet_sample/data/api/dto/token_accounts_by_owner_response.dart';
import 'package:solana_wallet_sample/data/api/solana_api.dart';
import 'package:solana_wallet_sample/data/model/coin/base_coin_data.dart';
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
    required String toAddress,
    required String amount,
    required String seedPhrase,
    required int decimals,
  });
}

class SolanaServiceImpl implements SolanaService {
  final SolanaApi _solanaApi;
  final WalletRepository _walletRepository;
  final CommonStorage _commonStorage;

  const SolanaServiceImpl({
    required SolanaApi solanaApi,
    required WalletRepository walletRepository,
    required CommonStorage commonStorage,
  })  : _commonStorage = commonStorage,
        _walletRepository = walletRepository,
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
    required String toAddress,
    required String amount,
    required String seedPhrase,
    required int decimals,
  }) =>
      switch (type) {
        CoinType.coin => _sendCoinTransaction(
            toAddress,
            amount,
            seedPhrase,
            decimals,
          ),
        CoinType.token => _sendTokenTransaction(
            toAddress,
            amount,
            seedPhrase,
            decimals,
          ),
      };

  Future<String> _sendTokenTransaction(
    String toAddress,
    String amount,
    String seedPhrase,
    int decimals,
  ) async {
    throw UnimplementedError('Token transaction is not implemented yet');
  }

  Future<String> _sendCoinTransaction(
    String toAddress,
    String amount,
    String? seedPhrase,
    int decimals,
  ) async {
    final tnx = await _getCoinTransaction(
      toAddress,
      amount,
      seedPhrase,
      decimals,
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

  Future<String> _getCoinTransaction(
    String toAddress,
    String amount,
    String? seedPhrase,
    int decimals,
  ) async {
    final amountInLamports = Utils.valueToMinUnit(
      double.parse(amount),
      decimals,
    );

    final List<int> privateKey;

    if (seedPhrase != null) {
      final Pointer<TWHDWallet> wallet = _walletRepository.createWithMnemonic(seedPhrase!);

      privateKey = _walletRepository
          .getKeyForCoin(
            coinType: TWCoinType.TWCoinTypeSolana,
            wallet: wallet,
          )
          .toList();

      _walletRepository.walletDelete(wallet);
    } else {
      privateKey = [];
    }

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
}
