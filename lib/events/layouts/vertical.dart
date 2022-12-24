part of events;

/// Событие изменение расположения на вертикальное
class Vertical extends ViewEvent {

  const Vertical() : super("", const TypeDigit());

  @override
  void doSomething(ViewData data) {
    data.layout = const LayoutVertical();
  }
}

