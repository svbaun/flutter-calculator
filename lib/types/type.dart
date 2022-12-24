part of types;

/// Абстрактный класс для типа кнопки
abstract class Type {

  const Type();

  /// Цвет кнопки при нажатии
  Color pressed(BuildContext context);

  /// Цвет кнопки при наведении мышки
  Color hovered(BuildContext context);

  /// Цвет кнопки в других состояниях
  Color defaultColor(BuildContext context);

  /// Цвет изображения на кнопке
  Color foreground(BuildContext context);
}

