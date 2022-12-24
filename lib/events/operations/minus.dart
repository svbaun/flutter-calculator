part of events;

/// Событие операции вычитания
class Minus extends ViewEvent {

  const Minus() : super("assets/minus.svg", const TypeOperation());

  @override
  List<LogicalKeyboardKey> get keyboardKeys => const [ LogicalKeyboardKey.minus, LogicalKeyboardKey.numpadSubtract ];

  @override
  void doSomething(ViewData data) {
    data.operations.add(OperationMinus(data.asDouble));
    data.value = "0";
  }
}

