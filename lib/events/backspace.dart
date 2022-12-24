part of events;

/// Событие удалить последний символ
class Backspace extends ViewEvent {

  const Backspace() : super("assets/backspace.svg", const TypeDigit());

  @override
  List<LogicalKeyboardKey> get keyboardKeys => const [ LogicalKeyboardKey.backspace, LogicalKeyboardKey.delete ];

  @override
  void doSomething(ViewData data) {
    data.value = data.value.substring(0, data.value.length-1);
    if (data.value.isEmpty) data.value = "0";
  }
}

