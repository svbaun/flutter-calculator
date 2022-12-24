part of widgets;

class DisplayValue extends StatelessWidget {

  final double width;
  final double height;
  final String value;
  
  const DisplayValue({
    super.key,
    required this.width,
    required this.height,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    double heightCalc = height;
    double widthCalc = height / 2;
    if (widthCalc * value.length > width) {
      widthCalc = width / value.length;
      heightCalc = widthCalc * 2;
    }
    final pf = PathFile();
    return Row(
      children: List<Widget>.generate(value.length, (index) {
        final d = value.substring(index, index + 1);
        final path = pf.pathFromSym(d);
        if (path.isEmpty) return const SizedBox();
        return SizedBox(
          width: (d==".") ? widthCalc / 2 : widthCalc,
          height: heightCalc,
          child: Center(
            child: SvgPicture.asset(
              path,
              semanticsLabel: d,
              fit: BoxFit.contain,
              color: Theme.of(context).colorScheme.displayForeground,
            ),
          ),
        );
      }),
    );
  }
}

