part of bloc;

/// Класс для получения пути картинки по сомволу
class PathFile {
  
  final String _find = "0123456789.-";
  final List<String> _pathes = [
    ...List<String>.generate(10, (index) => Digit("$index").path),
    const Comma().path,
    const Minus().path,
  ];
  
  /// Возвращает путь картинки по сомволу из текущего значения, либо пустую строку
  String pathFromSym(String sym) {
    int index = _find.indexOf(sym);
    if (index<0 || index>=_pathes.length) return "";
    return _pathes[index];
  }
}
