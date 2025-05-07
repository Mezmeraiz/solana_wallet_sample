// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_list_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoinListDataImpl _$$CoinListDataImplFromJson(Map<String, dynamic> json) =>
    _$CoinListDataImpl(
      id: json['id'] as String,
      symbol: json['symbol'] as String,
      name: json['name'] as String,
      platforms: Map<String, String>.from(json['platforms'] as Map),
    );

Map<String, dynamic> _$$CoinListDataImplToJson(_$CoinListDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
      'platforms': instance.platforms,
    };
