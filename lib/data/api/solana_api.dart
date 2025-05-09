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
}

class SolanaApiImpl implements SolanaApi {
  final HttpWrapper _httpWrapper;

  const SolanaApiImpl({required HttpWrapper httpWrapper}) : _httpWrapper = httpWrapper;

  @override
  Future<List<TokenAccountsByOwnerResponse>> getTokenAccountsByOwner({
    required String url,
    required String address,
  }) async {
    final response = await _httpWrapper.post(
      url,
      body: jsonEncode(Utils.getJsonRpcData(
        method: 'getTokenAccountsByOwner',
        params: [
          address,
          {
            'programId': 'TokenkegQfeZyiNwAJbNbGKPFXCWuBvf9Ss623VQ5DA',
          },
          {
            "encoding": "jsonParsed",
          }
        ],
      )),
    );

    final List<dynamic> accounts = response['result']['value'];

    return accounts.map((e) {
      final info = e['account']['data']['parsed']['info'] as Map<String, dynamic>;

      return TokenAccountsByOwnerResponse(
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
}
