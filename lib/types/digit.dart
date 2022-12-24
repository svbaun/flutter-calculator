part of types;

/// Тип цифровой кнопки
class TypeDigit extends Type {

  const TypeDigit() : super();
  
  @override
  Color pressed(BuildContext context) => Theme.of(context).colorScheme.pressedButtonDig;
  
  @override
  Color hovered(BuildContext context) => Theme.of(context).colorScheme.hoveredButtonDig;
  
  @override
  Color defaultColor(BuildContext context) => Theme.of(context).colorScheme.defaultButtonDig;
  
  @override
  Color foreground(BuildContext context) => Theme.of(context).colorScheme.foregroundButtonDig;
}

