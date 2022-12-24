part of events;

/// Событие очистить все
class Clear extends ViewEvent {

  const Clear() : super("assets/clear.svg", const TypeClear());

  @override
  List<LogicalKeyboardKey> get keyboardKeys => const [ LogicalKeyboardKey.escape ];

  @override
  void doSomething(ViewData data) {
    data.value = "0";
    data.operations.clear();
  }
}

