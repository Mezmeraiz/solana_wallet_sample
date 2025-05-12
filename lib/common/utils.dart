class Utils {
  const Utils._();

  static Map<String, Object> getJsonRpcData({
    required String method,
    List<Object>? params,
    String version = '2.0',
    Object? id,
  }) =>
      {
        'jsonrpc': version,
        'method': method,
        'id': id ?? 1,
        if (params != null) 'params': params,
      };

  static double minUnitToValue(
    BigInt minUnit,
    int decimals,
  ) =>
      minUnit.toDouble() / BigInt.from(10).pow(decimals).toDouble();
}
