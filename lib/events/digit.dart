part of events;

/// Событие добавить в текущее значение цифру
class Digit extends ViewEvent {

  /// Цифра, которую добавляем к текущему значению
  final String digit;

  const Digit(this.digit) : super("assets/$digit.svg", const TypeDigit());

  @override
  List<LogicalKeyboardKey> get keyboardKeys {
    if (digit.isEmpty) return const [];
    final code = digit.codeUnits[0];
    if (code >= 48 && code <= 57) {
      return [ LogicalKeyboardKey(code), LogicalKeyboardKey(code + 0x00200000200) ];
    } else {
      return [ LogicalKeyboardKey(code) ];
    }
  }

  @override
  void doSomething(ViewData data) {
    int countDigit = 0;
    for (int code in data.value.codeUnits) {
      if (code>=48 && code<=57) countDigit++;
    }
    if (countDigit>=17) return;

    if (data.value=="0") data.value = "";
    data.value += digit;
  }
}

