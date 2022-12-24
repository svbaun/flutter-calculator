part of bloc;

/// В классе содержится весь набор свойств состояния приложения
class ViewData {

  /// Макет расположения кнопок
  Layout layout = const LayoutHorizontal();

  /// Список операций и их аргументов. Это математическое выражение вычисляется после нажатия кнопки "="
  List<Operation> operations = [];

  /// Возвращает путь картинки последней операции, либо null
  String? get operationPath {
    if (operations.isEmpty) return null;
    return operations.last.path;
  }

  /// Возвращает ключ последней операции, либо null
  Key? get operationKey {
    if (operations.isEmpty) return null;
    return operations.last.key;
  }

  /// Числовое значение в памяти
  double? memory;

  /// true, если число в памяти не удастся показать на дисплее
  bool get isMemoryError => _isInfinity("$memory") || _isError("$memory");
  
  /// Текущее показываемое значение строки на дисплее
  String value = "0";

  /// true, если текущее значение бесконечно
  bool get isValueInfinity => _isInfinity(value);

  /// true, если текущее значение с ошибкой
  bool get isValueError => _isError(value);

  /// Текущее показываемое значение на дисплее в виде double
  double get asDouble => double.parse(value);
  set asDouble(double v) {
    value = v.toStringAsFixed(16);
    if (value.contains(".")) {
      while (value.endsWith("0")) {
        value = value.substring(0, value.length-1);
        if (value.endsWith(".")) {
          value = value.substring(0, value.length-1);
          break;
        }
      }
    }
    if (value.contains("e-")) value = "0";
  }
  
  bool _isInfinity(String val) {
    if (val.contains("e+")) return true;
    if (val == "Infinity") return true;
    return false;
  }
  
  bool _isError(String? val) => val == "NaN";
}
