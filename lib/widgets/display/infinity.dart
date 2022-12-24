part of widgets;

class DisplayInfinity extends StatelessWidget {

  final double width;
  final double height;
  
  const DisplayInfinity({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    double heightCalc = height;
    double widthCalc = height * 5;
    if (widthCalc > width) {
      widthCalc = width;
      heightCalc = widthCalc / 5;
    }
    return SizedBox(
      width: widthCalc,
      height: heightCalc,
      child: SvgPicture.asset(
        "assets/infinity.svg",
        fit: BoxFit.contain,
        color: Theme.of(context).colorScheme.displayForegroundError,
      ),
    );
  }
}

