part of events;

/// Событие вычесть из памяти текущее значение
class MemoryMinus extends ViewEvent {

  const MemoryMinus() : super("assets/memory_minus.svg", const TypeMemory());

  @override
  void doSomething(ViewData data) {
    data.memory ??= 0;
    data.memory = data.memory! - data.asDouble;
    if (data.memory == 0) data.memory = null;
  }
}

