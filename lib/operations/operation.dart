part of operations;

/// Абстрактный класс для операции
abstract class Operation {

  /// Путь картинки для операции
  final String path;

  /// Значение первого аргумента операции
  double value;

  /// Возвращает ключ операции
  Key get key => Key(runtimeType.toString().substring(9));

  Operation(this.path, this.value);
}

