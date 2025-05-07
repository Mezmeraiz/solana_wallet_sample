// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_coin_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseCoinDataImpl _$$BaseCoinDataImplFromJson(Map<String, dynamic> json) =>
    _$BaseCoinDataImpl(
      id: json['id'] as String,
      ticker: json['ticker'] as String,
      iconUrl: json['iconUrl'] as String?,
      contractAddress: json['contractAddress'] as String?,
      type: $enumDecode(_$CoinTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$BaseCoinDataImplToJson(_$BaseCoinDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ticker': instance.ticker,
      'iconUrl': instance.iconUrl,
      'contractAddress': instance.contractAddress,
      'type': _$CoinTypeEnumMap[instance.type]!,
    };

const _$CoinTypeEnumMap = {
  CoinType.coin: 'coin',
  CoinType.token: 'token',
};
