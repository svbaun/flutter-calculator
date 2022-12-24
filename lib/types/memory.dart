part of types;

/// Тип кнопок отвечающих за операции с памятью
class TypeMemory extends Type {

  const TypeMemory() : super();
  
  @override
  Color pressed(BuildContext context) => Theme.of(context).colorScheme.pressedButtonMem;
  
  @override
  Color hovered(BuildContext context) => Theme.of(context).colorScheme.hoveredButtonMem;
  
  @override
  Color defaultColor(BuildContext context) => Theme.of(context).colorScheme.defaultButtonMem;
  
  @override
  Color foreground(BuildContext context) => Theme.of(context).colorScheme.foregroundButtonMem;
}

