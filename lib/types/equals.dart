part of types;

/// Тип кнопки равно
class TypeEquals extends Type {

  const TypeEquals() : super();
  
  @override
  Color pressed(BuildContext context) => Theme.of(context).colorScheme.pressedButtonEqv;
  
  @override
  Color hovered(BuildContext context) => Theme.of(context).colorScheme.hoveredButtonEqv;
  
  @override
  Color defaultColor(BuildContext context) => Theme.of(context).colorScheme.defaultButtonEqv;
  
  @override
  Color foreground(BuildContext context) => Theme.of(context).colorScheme.foregroundButtonEqv;
}

