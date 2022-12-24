part of events;

/// Событие очистить память
class MemoryClear extends ViewEvent {

  const MemoryClear() : super("assets/memory_clear.svg", const TypeMemory());

  @override
  void doSomething(ViewData data) {
    data.memory = null;
  }
}

