import 'package:solana_wallet_sample/data/http_wrapper/http_wrapper.dart';

abstract interface class SolanaApi {}

class SolanaApiImpl implements SolanaApi {
  final HttpWrapper _httpWrapper;

  const SolanaApiImpl({required HttpWrapper httpWrapper}) : _httpWrapper = httpWrapper;
}
