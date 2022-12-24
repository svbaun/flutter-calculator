part of widgets;

class Button extends StatelessWidget {

  /// Событие, которое будет происходить при нажатии кнопки
  final ViewEvent event;
  final BorderRadius? radius;
  
  const Button({ super.key, required this.event, this.radius });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ViewBloc bloc = BlocProvider.of(context);
        bloc.add(event);
      },
      style: ButtonStyle(
        shape: (radius==null) ? null : MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(borderRadius: radius!),
        ),
        foregroundColor: MaterialStatePropertyAll<Color>(event.type.foreground(context)),
        backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) return event.type.pressed(context);
            if (states.contains(MaterialState.hovered)) return event.type.hovered(context);
            return event.type.defaultColor(context);
          },
        ),
      ),
      child: Center(
        child: SvgPicture.asset(
          event.path,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

