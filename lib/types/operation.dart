part of types;

/// Тип кнопок операций. Таких как плюс, минус, умножить и т.д.
class TypeOperation extends Type {

  const TypeOperation() : super();
  
  @override
  Color pressed(BuildContext context) => Theme.of(context).colorScheme.pressedButtonOpr;
  
  @override
  Color hovered(BuildContext context) => Theme.of(context).colorScheme.hoveredButtonOpr;
  
  @override
  Color defaultColor(BuildContext context) => Theme.of(context).colorScheme.defaultButtonOpr;
  
  @override
  Color foreground(BuildContext context) => Theme.of(context).colorScheme.foregroundButtonOpr;
}

