import 'package:freezed_annotation/freezed_annotation.dart';

part 'icon_coin_data.freezed.dart';
part 'icon_coin_data.g.dart';

@freezed
class IconCoinData with _$IconCoinData {
  const factory IconCoinData({
    required String id,
    required String image,
  }) = _IconCoinData;

  factory IconCoinData.fromJson(Map<String, dynamic> json) => _$IconCoinDataFromJson(json);
}
