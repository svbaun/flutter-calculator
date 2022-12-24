part of events;

/// Событие операции сложения
class Plus extends ViewEvent {

  const Plus() : super("assets/plus.svg", const TypeOperation());

  @override
  List<LogicalKeyboardKey> get keyboardKeys => const [ LogicalKeyboardKey.add, LogicalKeyboardKey.numpadAdd ];

  @override
  void doSomething(ViewData data) {
    data.operations.add(OperationPlus(data.asDouble));
    data.value = "0";
  }
}

