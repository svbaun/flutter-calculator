part of events;

/// Событие равно (вычисление вырадения)
class Equals extends ViewEvent {

  const Equals() : super("assets/equals.svg", const TypeEquals());

  @override
  List<LogicalKeyboardKey> get keyboardKeys => const [ LogicalKeyboardKey.enter, LogicalKeyboardKey.numpadEnter ];

  @override
  void doSomething(ViewData data) {
    data.operations.add(OperationNone(data.asDouble));
    int i = 0;
    while (i<data.operations.length) {
      if (data.operations[i] is OperationMultiply) {
        data.operations[i + 1].value *= data.operations[i].value;
        data.operations.removeAt(i);
        continue;
      }
      if (data.operations[i] is OperationDivision) {
        data.operations[i + 1].value = data.operations[i].value / data.operations[i + 1].value;
        data.operations.removeAt(i);
        continue;
      }
      i++;
    }
    while (data.operations.length>1) {
      if (data.operations[0] is OperationPlus) {
        data.operations[1].value += data.operations[0].value;
      } else {
        data.operations[1].value = data.operations[0].value - data.operations[1].value;
      }
      data.operations.removeAt(0);
    }
    data.asDouble = data.operations[0].value;
    data.operations.clear();
  }
}

