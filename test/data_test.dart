import 'package:flutter_test/flutter_test.dart';
import 'package:calculator/calculator.dart';

void main() {
  group('ViewData', () {
    test('asDouble', () {
      final data = ViewData();
      data.value = "321.123";
      expect(data.asDouble, 321.123);
      data.asDouble = 1.51 - 0.01;
      expect(data.value, "1.5");
      data.asDouble = data.asDouble - 0.5;
      expect(data.value, "1");
      data.value = "0.0000000001";
      data.asDouble = data.asDouble * data.asDouble;
      expect(data.value, "0");
    });
    test('isValueInfinity', () {
      final data = ViewData();
      data.value = "1";
      const Division().doSomething(data);
      data.value = "0";
      const Equals().doSomething(data);
      expect(data.isValueInfinity, true);
    });
    test('isValueError', () {
      final data = ViewData();
      data.value = "-1";
      const SquareRoot().doSomething(data);
      expect(data.isValueError, true);
    });
  });
}
