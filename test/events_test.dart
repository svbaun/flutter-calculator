//import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:calculator/calculator.dart';

void main() {
  group('Events', () {
    test('Digit', () {
      final data = ViewData();
      const value = "1234567890";
      for(int i=0;i<value.length;i++) {
        Digit(value.substring(i, i+1)).doSomething(data);
      }
      expect(data.value, value);
      for(int i=0;i<value.length;i++) {
        Digit(value.substring(i, i+1)).doSomething(data);
      }
      expect(data.value, (value+value).substring(0, 17));
    });
    test('Comma', () {
      final data = ViewData();
      const Comma().doSomething(data);
      expect(data.value, "0.");
      const Digit("5").doSomething(data);
      const Comma().doSomething(data);
      expect(data.value, "0.5");
    });
    test('Backspace', () {
      final data = ViewData();
      data.value = "32";
      const Backspace().doSomething(data);
      expect(data.value, "3");
      const Backspace().doSomething(data);
      expect(data.value, "0");
      const Backspace().doSomething(data);
      expect(data.value, "0");
    });
    test('Clear', () {
      final data = ViewData();
      data.value = "100";
      const Plus().doSomething(data);
      data.value = "200";
      const Clear().doSomething(data);
      expect(data.value, "0");
      expect(data.operations.length, 0);
    });
    test('Plus and Equals', () {
      final data = ViewData();
      data.value = "200";
      const Plus().doSomething(data);
      data.value = "4";
      const Equals().doSomething(data);
      expect(data.value, "204");
    });
    test('Minus and Equals', () {
      final data = ViewData();
      data.value = "200";
      const Minus().doSomething(data);
      data.value = "4";
      const Equals().doSomething(data);
      expect(data.value, "196");
    });
    test('Multiply and Equals', () {
      final data = ViewData();
      data.value = "200";
      const Multiply().doSomething(data);
      data.value = "4";
      const Equals().doSomething(data);
      expect(data.value, "800");
    });
    test('Division and Equals', () {
      final data = ViewData();
      data.value = "200";
      const Division().doSomething(data);
      data.value = "4";
      const Equals().doSomething(data);
      expect(data.value, "50");
    });
    test('Squared', () {
      final data = ViewData();
      data.value = "15";
      const Squared().doSomething(data);
      expect(data.value, "225");
    });
    test('SquareRoot', () {
      final data = ViewData();
      data.value = "225";
      const SquareRoot().doSomething(data);
      expect(data.value, "15");
    });
    test('MemoryPlus', () {
      final data = ViewData();
      data.value = "225";
      const MemoryPlus().doSomething(data);
      expect(data.memory, 225);
    });
    test('MemoryMinus', () {
      final data = ViewData();
      data.value = "225";
      const MemoryMinus().doSomething(data);
      expect(data.memory, -225);
    });
    test('MemoryRetrieve', () {
      final data = ViewData();
      data.memory = 225;
      const MemoryRetrieve().doSomething(data);
      expect(data.value, "225");
    });
    test('MemoryClear', () {
      final data = ViewData();
      data.memory = 225;
      const MemoryClear().doSomething(data);
      expect(data.memory, null);
    });
    test('Horizontal', () {
      final data = ViewData();
      data.layout = const LayoutVertical();
      const Horizontal().doSomething(data);
      expect(data.layout is LayoutHorizontal, true);
    });
    test('Vertical', () {
      final data = ViewData();
      data.layout = const LayoutHorizontal();
      const Vertical().doSomething(data);
      expect(data.layout is LayoutVertical, true);
    });
  });
  /*testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const App());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });*/
}
