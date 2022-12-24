part of layouts;

/// Макет расположения кнопок для вертикальной позиции
class LayoutVertical extends Layout {
  const LayoutVertical() : super(
    list: const [
      [ MemoryClear(), MemoryPlus(), MemoryMinus(), MemoryRetrieve() ],
      [ Clear(),       Squared(),    SquareRoot(),  Division()       ],
      [ Digit("7"),    Digit("8"),   Digit("9"),    Multiply()       ],
      [ Digit("4"),    Digit("5"),   Digit("6"),    Plus()           ],
      [ Digit("1"),    Digit("2"),   Digit("3"),    Minus()          ],
      [ Digit("0"),    Comma(),      Backspace(),   Equals()         ],
    ],
    buttonWidth: 10,
    buttonHeight: 4,
    spaceWidth: 1,
    spaceHeight: 1,
  );
}

