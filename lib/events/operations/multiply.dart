part of events;

/// Событие операции умножения
class Multiply extends ViewEvent {

  const Multiply() : super("assets/multiply.svg", const TypeOperation());

  @override
  List<LogicalKeyboardKey> get keyboardKeys => const [ LogicalKeyboardKey.asterisk, LogicalKeyboardKey.numpadMultiply ];

  @override
  void doSomething(ViewData data) {
    data.operations.add(OperationMultiply(data.asDouble));
    data.value = "0";
  }
}

