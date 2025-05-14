// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_accounts_by_owner_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenAccountsByOwnerResponseImpl _$$TokenAccountsByOwnerResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TokenAccountsByOwnerResponseImpl(
      pubkey: json['pubkey'] as String,
      contractAddress: json['contractAddress'] as String,
      balance: BigInt.parse(json['balance'] as String),
      decimals: (json['decimals'] as num).toInt(),
    );

Map<String, dynamic> _$$TokenAccountsByOwnerResponseImplToJson(
        _$TokenAccountsByOwnerResponseImpl instance) =>
    <String, dynamic>{
      'pubkey': instance.pubkey,
      'contractAddress': instance.contractAddress,
      'balance': instance.balance.toString(),
      'decimals': instance.decimals,
    };
