part of layouts;

/// Макет расположения кнопок для горизонтальной позиции
class LayoutHorizontal extends Layout {
  const LayoutHorizontal() : super(
    list: const [
      [ Clear(),       Digit("7"), Digit("8"), Digit("9"),  Division(), MemoryRetrieve() ],
      [ MemoryClear(), Digit("4"), Digit("5"), Digit("6"),  Multiply(), SquareRoot()     ],
      [ MemoryPlus(),  Digit("1"), Digit("2"), Digit("3"),  Plus(),     Squared()        ],
      [ MemoryMinus(), Digit("0"), Comma(),    Backspace(), Minus(),    Equals()         ],
    ],
    buttonWidth: 7,
    buttonHeight: 5,
    spaceWidth: 1,
    spaceHeight: 1,
  );
}

