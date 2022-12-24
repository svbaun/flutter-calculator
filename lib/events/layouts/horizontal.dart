part of events;

/// Событие изменение расположения на горизонтальное
class Horizontal extends ViewEvent {

  const Horizontal() : super("", const TypeDigit());

  @override
  void doSomething(ViewData data) {
    data.layout = const LayoutHorizontal();
  }
}

