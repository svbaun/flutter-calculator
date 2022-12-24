part of events;

/// Событие операции деления
class Division extends ViewEvent {

  const Division() : super("assets/division.svg", const TypeOperation());

  @override
  List<LogicalKeyboardKey> get keyboardKeys => const [ LogicalKeyboardKey.slash, LogicalKeyboardKey.numpadDivide ];

  @override
  void doSomething(ViewData data) {
    data.operations.add(OperationDivision(data.asDouble));
    data.value = "0";
  }
}

