part of widgets;

/// Задаем цвета приложения
extension CustomColorScheme on ColorScheme {

  /// Цвет нажатой цифровой кнопки
  Color get pressedButtonDig => brightness == Brightness.light ? const Color(0xff888888) : const Color(0xff444444);

  /// Цвет цифровой кнопки, когда на нее наведен курсор мыши
  Color get hoveredButtonDig => brightness == Brightness.light ? const Color(0xffbbbbbb) : const Color(0xff777777);

  /// Цвет цифровой кнопки в остальных ее сосотояниях
  Color get defaultButtonDig => brightness == Brightness.light ? const Color(0xffdddddd) : const Color(0xff999999);

  /// Цвет изображения на цифровой кнопке
  Color get foregroundButtonDig => const Color(0xff000000);


  /// Цвет нажатой кнопки операций
  Color get pressedButtonOpr => brightness == Brightness.light ? const Color(0xff666666) : const Color(0xff666666);

  /// Цвет кнопки операций, когда на нее наведен курсор мыши
  Color get hoveredButtonOpr => brightness == Brightness.light ? const Color(0xff999999) : const Color(0xff999999);

  /// Цвет кнопки операций в остальных ее сосотояниях
  Color get defaultButtonOpr => brightness == Brightness.light ? const Color(0xffbbbbbb) : const Color(0xffbbbbbb);

  /// Цвет изображения на кнопке операций
  Color get foregroundButtonOpr => const Color(0xff000000);


  /// Цвет нажатой кнопки операций с памятью
  Color get pressedButtonMem => brightness == Brightness.light ? const Color(0xff8888aa) : const Color(0xff444466);

  /// Цвет кнопки операций с памятью, когда на нее наведен курсор мыши
  Color get hoveredButtonMem => brightness == Brightness.light ? const Color(0xffbbbbdd) : const Color(0xff777799);

  /// Цвет кнопки операций с памятью в остальных ее сосотояниях
  Color get defaultButtonMem => brightness == Brightness.light ? const Color(0xffddddff) : const Color(0xff9999bb);

  /// Цвет изображения на кнопке операций с памятью
  Color get foregroundButtonMem => const Color(0xff000000);


  /// Цвет нажатой кнопки очистить все
  Color get pressedButtonClr => brightness == Brightness.light ? const Color(0xffff8888) : const Color(0xffcc4444);

  /// Цвет кнопки очистить все, когда на нее наведен курсор мыши
  Color get hoveredButtonClr => brightness == Brightness.light ? const Color(0xffffbbbb) : const Color(0xffcc7777);

  /// Цвет кнопки очистить все в остальных ее сосотояниях
  Color get defaultButtonClr => brightness == Brightness.light ? const Color(0xffffdddd) : const Color(0xffcc9999);

  /// Цвет изображения на кнопке очистить все
  Color get foregroundButtonClr => const Color(0xff000000);


  /// Цвет нажатой кнопки равно
  Color get pressedButtonEqv => brightness == Brightness.light ? const Color(0xff88ff88) : const Color(0xff44cc44);

  /// Цвет кнопки равно, когда на нее наведен курсор мыши
  Color get hoveredButtonEqv => brightness == Brightness.light ? const Color(0xffbbffbb) : const Color(0xff77cc77);

  /// Цвет кнопки равно в остальных ее сосотояниях
  Color get defaultButtonEqv => brightness == Brightness.light ? const Color(0xffddffdd) : const Color(0xff99cc99);

  /// Цвет изображения на кнопке равно
  Color get foregroundButtonEqv => const Color(0xff000000);


  /// Цвет фона дисплея
  Color get displayBackground => brightness == Brightness.light ? const Color(0xffdddddd) : const Color(0xff444444);

  /// Цвет текста на дисплее
  Color get displayForeground => const Color(0xff000000);

  /// Цвет сигнализирующий об ошибке не дисплее
  Color get displayForegroundError => const Color(0xffff0000);
}

