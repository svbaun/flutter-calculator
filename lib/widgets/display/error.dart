part of widgets;

class DisplayError extends StatelessWidget {

  final double width;
  final double height;
  
  const DisplayError({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    double heightCalc = height;
    double widthCalc = height * 4;
    if (widthCalc > width) {
      widthCalc = width;
      heightCalc = widthCalc / 4;
    }
    return SizedBox(
      width: widthCalc,
      height: heightCalc,
      child: SvgPicture.asset(
        "assets/error.svg",
        fit: BoxFit.contain,
        color: Theme.of(context).colorScheme.displayForegroundError,
      ),
    );
  }
}

