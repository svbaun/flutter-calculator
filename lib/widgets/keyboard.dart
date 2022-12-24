part of widgets;

/// Слушает нажатие клавиш на клавиатуре и посылает соответствующие события для изменения состояния приложения
class Keyboard extends StatefulWidget {
  
  /// Макет расположения кнопок
  final Layout layout;
  final Widget? child;
  
  const Keyboard({Key? key, required this.layout, this.child }) : super(key: key);

  @override
  State<Keyboard> createState() => _KeyboardState();
}

class _KeyboardState extends State<Keyboard> {

  late FocusNode _node;

  @override
  void initState() {
    super.initState();
    _node = FocusNode();
  }

  @override
  void dispose() {
    _node.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      focusNode: _node,
      autofocus: true,
      onKey: (eventPressed) {
        for (final row in widget.layout.list) {
          for (final event in row) {
            for (final key in event.keyboardKeys) {
              if (eventPressed.isKeyPressed(key)) {
                ViewBloc bloc = BlocProvider.of(context);
                bloc.add(event);
              }
            }
          }
        }
      },
      child: (widget.child == null) ? const SizedBox() : widget.child!,
    );
  }
}

