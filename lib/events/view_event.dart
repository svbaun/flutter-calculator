part of events;

/// Абстрактный класс для события
abstract class ViewEvent {

  /// Путь изображения соответствующему событию
  final String path;

  /// Тип события (тип кнопки для цвета)
  final Type type;
  
  const ViewEvent(this.path, this.type);
  
  /// Клавиши на клавиатуре соответствующие событию
  List<LogicalKeyboardKey> get keyboardKeys => const [];

  /// Действие с данными состояния, которые вызывает событие
  void doSomething(ViewData data);
}

