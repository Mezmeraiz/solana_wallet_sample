enum CoinType {
  coin,
  token;

  factory CoinType.fromString(String value) => values.firstWhere((e) => e.name == value);
}
