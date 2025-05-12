import 'package:rxdart/rxdart.dart';

extension ValueStreamX<T> on ValueStream<T> {
  Future<T> firstWhereOrValue(bool Function(T value) test) => test(value) ? Future.value(value) : firstWhere(test);
}
