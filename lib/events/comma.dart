part of events;

/// Событие добавить в текущее значение запятую
class Comma extends ViewEvent {

  const Comma() : super("assets/comma.svg", const TypeDigit());

  @override
  List<LogicalKeyboardKey> get keyboardKeys => const [ LogicalKeyboardKey.comma, LogicalKeyboardKey.period, LogicalKeyboardKey.numpadComma ];

  @override
  void doSomething(ViewData data) {
    if (data.value.contains(".")) return;
    data.value += ".";
  }
}

