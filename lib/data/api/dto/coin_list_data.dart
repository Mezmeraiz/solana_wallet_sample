import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin_list_data.freezed.dart';
part 'coin_list_data.g.dart';

@freezed
class CoinListData with _$CoinListData {
  const factory CoinListData({
    required String id,
    required String symbol,
    required String name,
    required Map<String, String> platforms,
  }) = _CoinListData;

  factory CoinListData.fromJson(Map<String, dynamic> json) => _$CoinListDataFromJson(json);
}
