part of events;

/// Событие операции извлечения квадратного корня
class SquareRoot extends ViewEvent {

  const SquareRoot() : super("assets/square_root.svg", const TypeOperation());

  @override
  void doSomething(ViewData data) {
    data.asDouble = sqrt(data.asDouble);
  }
}

