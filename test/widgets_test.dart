import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:calculator/calculator.dart';

void main() {
  group('Widgets', () {
    testWidgets('App', (WidgetTester tester) async {
      await tester.pumpWidget(const App());

      String getValue() {
        final Finder finderPictures = find.descendant(of: find.byType(DisplayValue), matching: find.byType(SvgPicture));
        final List<SvgPicture> listPictures = finderPictures.evaluate().map((Element e) => e.widget as SvgPicture).toList();
        String result = "";
        for (SvgPicture item in listPictures) {
          result += "${item.semanticsLabel}";
        }
        return result;
      }

      Future<void> tapButton(String type, [ String? digit ]) async {
        final Finder buttons = find.byType(Button);
        final List<Button> listButtons = buttons.evaluate().map((Element e) => e.widget as Button).toList();
        int count = 0, buttonIndex = -1;
        for (int index = 0; index < listButtons.length; index++) {
          if (listButtons[index].event.runtimeType.toString() != type) continue;
          if (type == "Digit" && (listButtons[index].event as Digit).digit != digit) continue;
          count++;buttonIndex = index;
        }
        expect(count, 1);
        
        await tester.tap(buttons.at(buttonIndex));
        await tester.pump();
      }

      void checkOperation(String operation) {
        final operations = [ "Plus", "Minus", "Multiply", "Division" ];
        for (String o in operations) {
          expect(find.byKey(Key(o)), (operation == o) ? findsOneWidget : findsNothing);
        }
      }
      
      // Проверяем начальное состояние и нажатие цифры
      expect(getValue(), "0");
      await tapButton("Digit", "3");
      expect(getValue(), "3");
      checkOperation("");

      // Проверяем операцию сложения
      await tapButton("Plus");
      expect(getValue(), "0");
      checkOperation("Plus");
      await tapButton("Digit", "5");
      expect(getValue(), "5");
      await tapButton("Equals");
      expect(getValue(), "8");
      checkOperation("");
      
      // Проверяем операцию вычитания
      await tapButton("Minus");
      expect(getValue(), "0");
      checkOperation("Minus");
      await tapButton("Digit", "1");
      expect(getValue(), "1");
      await tapButton("Digit", "4");
      expect(getValue(), "14");
      await tapButton("Equals");
      expect(getValue(), "-6");
      checkOperation("");
      
      // Проверяем операцию деления
      await tapButton("Division");
      expect(getValue(), "0");
      checkOperation("Division");
      await tapButton("Digit", "3");
      expect(getValue(), "3");
      await tapButton("Equals");
      expect(getValue(), "-2");
      checkOperation("");
      
      // Проверяем операцию умножения
      await tapButton("Multiply");
      expect(getValue(), "0");
      checkOperation("Multiply");
      await tapButton("Digit", "7");
      expect(getValue(), "7");
      await tapButton("Equals");
      expect(getValue(), "-14");
      checkOperation("");
      
      // Проверяем вычисление сложного выражения
      await tapButton("Plus");
      expect(getValue(), "0");
      checkOperation("Plus");
      await tapButton("Digit", "2");
      expect(getValue(), "2");
      await tapButton("Multiply");
      expect(getValue(), "0");
      checkOperation("Multiply");
      await tapButton("Digit", "3");
      expect(getValue(), "3");
      await tapButton("Equals");
      expect(getValue(), "-8");
      checkOperation("");
      
      // Проверяем действие кнопки очистить все
      await tapButton("Plus");
      expect(getValue(), "0");
      checkOperation("Plus");
      await tapButton("Clear");
      expect(getValue(), "0");
      checkOperation("");
      await tapButton("Clear");
      expect(getValue(), "0");
      checkOperation("");
      
      // Проверяем ограничение длины текущего значения
      String s = "12345678901234567890";
      for (int si = 0; si < s.length; si++) {
        await tapButton("Digit", s.substring(si, si + 1));
        expect(getValue(), s.substring(0, (si >= 17) ? 17 : si + 1));
      }

      // Проверяем кнопку ","
      await tapButton("Clear");
      expect(getValue(), "0");
      await tapButton("Comma");
      expect(getValue(), "0.");
      await tapButton("Digit", "3");
      expect(getValue(), "0.3");
      await tapButton("Comma");
      expect(getValue(), "0.3");

      // Проверяем кнопку удалить символ
      await tapButton("Backspace");
      expect(getValue(), "0.");
      await tapButton("Backspace");
      expect(getValue(), "0");
      await tapButton("Backspace");
      expect(getValue(), "0");

      // Проверяем память
      const m = Key("M");
      expect(find.byKey(m), findsNothing);
      await tapButton("Digit", "4");
      expect(getValue(), "4");
      expect(find.byKey(m), findsNothing);
      await tapButton("MemoryMinus");
      expect(getValue(), "4");
      expect(find.byKey(m), findsOneWidget);
      await tapButton("Clear");
      expect(getValue(), "0");
      expect(find.byKey(m), findsOneWidget);
      await tapButton("MemoryRetrieve");
      expect(getValue(), "-4");
      expect(find.byKey(m), findsOneWidget);
      await tapButton("MemoryClear");
      expect(getValue(), "-4");
      expect(find.byKey(m), findsNothing);
      await tapButton("MemoryPlus");
      expect(getValue(), "-4");
      expect(find.byKey(m), findsOneWidget);
      await tapButton("MemoryMinus");
      expect(getValue(), "-4");
      expect(find.byKey(m), findsNothing);
    });
  });
}
