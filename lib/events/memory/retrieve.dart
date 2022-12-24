part of events;

/// Событие значение из памяти сделать текущим
class MemoryRetrieve extends ViewEvent {

  const MemoryRetrieve() : super("assets/memory_retrieve.svg", const TypeMemory());

  @override
  void doSomething(ViewData data) {
    if (data.memory != null) {
      data.asDouble = data.memory!;
    }
  }
}

