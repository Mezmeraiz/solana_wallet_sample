// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blockchain_coin_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlockchainCoinDataImpl _$$BlockchainCoinDataImplFromJson(
        Map<String, dynamic> json) =>
    _$BlockchainCoinDataImpl(
      id: json['id'] as String,
      balance: BigInt.parse(json['balance'] as String),
      decimals: (json['decimals'] as num).toInt(),
    );

Map<String, dynamic> _$$BlockchainCoinDataImplToJson(
        _$BlockchainCoinDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'balance': instance.balance.toString(),
      'decimals': instance.decimals,
    };
