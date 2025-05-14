import 'dart:convert';

import 'package:solana_wallet_sample/common/utils.dart';
import 'package:solana_wallet_sample/data/api/dto/token_accounts_by_owner_response.dart';
import 'package:solana_wallet_sample/data/http_wrapper/http_wrapper.dart';

abstract interface class SolanaApi {
  Future<List<TokenAccountsByOwnerResponse>> getTokenAccountsByOwner({
    required String url,
    required String address,
  });

  Future<int> getBalance({
    required String url,
    required String address,
  });

  Future<int> getMinimumBalanceForRentExemption({
    required String url,
  });

  Future<int> getFeeForMessage({
    required String url,
    required String message,
  });

  Future<String> getLatestBlockhash({
    required String url,
  });

  Future<String> sendTransaction({
    required String url,
    required String transaction,
  });
}

class SolanaApiImpl implements SolanaApi {
  final HttpWrapper _httpWrapper;

  const SolanaApiImpl({required HttpWrapper httpWrapper}) : _httpWrapper = httpWrapper;

  @override
  Future<List<TokenAccountsByOwnerResponse>> getTokenAccountsByOwner({
    required String url,
    required String address,
    String? mint,
  }) async {
    final response = await _httpWrapper.post(
      url,
      body: jsonEncode(Utils.getJsonRpcData(
        method: 'getTokenAccountsByOwner',
        params: [
          address,
          mint != null ? {'mint': mint} : {'programId': 'TokenkegQfeZyiNwAJbNbGKPFXCWuBvf9Ss623VQ5DA'},
          {'encoding': 'jsonParsed', 'commitment': 'confirmed'},
        ],
      )),
    );

    final List<dynamic> accounts = response['result']['value'];

    return accounts.map((e) {
      final info = e['account']['data']['parsed']['info'] as Map<String, dynamic>;

      return TokenAccountsByOwnerResponse(
        pubkey: e['pubkey'] as String,
        contractAddress: info['mint'] as String,
        balance: BigInt.parse(info['tokenAmount']['amount'] as String),
        decimals: info['tokenAmount']['decimals'] as int,
      );
    }).toList();
  }

  @override
  Future<int> getBalance({
    required String url,
    required String address,
  }) async {
    final response = await _httpWrapper.post(
      url,
      body: jsonEncode(Utils.getJsonRpcData(
        method: 'getBalance',
        params: [
          address,
        ],
      )),
    );

    return response['result']['value'] as int;
  }

  @override
  Future<int> getMinimumBalanceForRentExemption({
    required String url,
  }) async {
    final response = await _httpWrapper.post(
      url,
      body: jsonEncode(
        Utils.getJsonRpcData(
          method: 'getMinimumBalanceForRentExemption',
          params: [165],
        ),
      ),
    );

    final result = response['result'] as int;

    return result;
  }

  @override
  Future<int> getFeeForMessage({
    required String url,
    required String message,
  }) async {
    final response = await _httpWrapper.post(
      url,
      body: jsonEncode(
        Utils.getJsonRpcData(
          method: 'getFees',
          params: [
            message,
            {
              "commitment": "finalized",
            }
          ],
        ),
      ),
    );

    final result = response['result']['value'];

    return result;
  }

  @override
  Future<String> getLatestBlockhash({
    required String url,
  }) async {
    final response = await _httpWrapper.post(
      url,
      body: jsonEncode(
        Utils.getJsonRpcData(
          method: 'getLatestBlockhash',
          params: [
            {"commitment": "finalized"}
          ],
        ),
      ),
    );

    final result = response['result']['value']['blockhash'] as String;

    return result;
  }

  @override
  Future<String> sendTransaction({
    required String url,
    required String transaction,
  }) async {
    final response = await _httpWrapper.post(
      url,
      body: jsonEncode(
        Utils.getJsonRpcData(
          method: 'sendTransaction',
          params: [transaction],
        ),
      ),
    );

    final result = response['result'] as String;

    return result;
  }
}
