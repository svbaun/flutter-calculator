part of events;

/// Событие добавить к памяти текущее значение
class MemoryPlus extends ViewEvent {

  const MemoryPlus() : super("assets/memory_plus.svg", const TypeMemory());

  @override
  void doSomething(ViewData data) {
    data.memory ??= 0;
    data.memory = data.memory! + data.asDouble;
    if (data.memory == 0) data.memory = null;
  }
}

