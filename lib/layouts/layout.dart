part of layouts;

/// Абстрактный класс макета расположения кнопок
abstract class Layout {

  /// макет расположения кнопок
  final List<List<ViewEvent>> list;

  /// относительная ширина кнопок в макете
  final int buttonWidth;

  /// относительная высота кнопок в макете
  final int buttonHeight;

  /// относительная ширина расстояния между кнопок в макете
  final int spaceWidth;

  /// относительная высота расстояния между кнопок в макете
  final int spaceHeight;
  
  /// рассчитывается относительная ширина дисплея для макета
  int get displayWidth {
    int count = 0;
    for (List<ViewEvent> row in list) {
      if (count < row.length) count = row.length;
    }
    return count * (buttonWidth + spaceWidth) - spaceWidth;
  }

  const Layout({
    required this.list,
    required this.buttonWidth,
    required this.buttonHeight,
    required this.spaceWidth,
    required this.spaceHeight,
  });
}

