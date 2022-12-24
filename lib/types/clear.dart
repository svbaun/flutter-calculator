part of types;

/// Тип кнопки очистить все
class TypeClear extends Type {
  
  const TypeClear() : super();
  
  @override
  Color pressed(BuildContext context) => Theme.of(context).colorScheme.pressedButtonClr;
  
  @override
  Color hovered(BuildContext context) => Theme.of(context).colorScheme.hoveredButtonClr;
  
  @override
  Color defaultColor(BuildContext context) => Theme.of(context).colorScheme.defaultButtonClr;
  
  @override
  Color foreground(BuildContext context) => Theme.of(context).colorScheme.foregroundButtonClr;
}

