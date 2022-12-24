part of events;

/// Событие операции возведение в квадрат
class Squared extends ViewEvent {

  const Squared() : super("assets/squared.svg", const TypeOperation());

  @override
  void doSomething(ViewData data) {
    data.asDouble = pow(data.asDouble, 2).toDouble();
  }
}

