import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_accounts_by_owner_response.freezed.dart';
part 'token_accounts_by_owner_response.g.dart';

@freezed
class TokenAccountsByOwnerResponse with _$TokenAccountsByOwnerResponse {
  const factory TokenAccountsByOwnerResponse({
    required String pubkey,
    required String contractAddress,
    required BigInt balance,
    required int decimals,
  }) = _TokenAccountsByOwnerResponse;

  factory TokenAccountsByOwnerResponse.fromJson(Map<String, dynamic> json) =>
      _$TokenAccountsByOwnerResponseFromJson(json);
}
