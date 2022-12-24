part of widgets;

class Display extends StatelessWidget {

  final BorderRadius? radius;
  final ViewData data;
  
  const Display({
    super.key,
    this.radius,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.displayBackground,
        borderRadius: radius,
      ),
      child: Center(
        child: LayoutBuilder(
          builder: (context, BoxConstraints constraints) {
            double spaceWidth = constraints.maxWidth * 0.02;
            double height = constraints.maxHeight * 0.8;
            double iconHeight = height / 2;
            double iconWidth = iconHeight / 2;
            double width = constraints.maxWidth - spaceWidth * 3 - iconWidth;
            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: spaceWidth),
                data.isValueInfinity ?
                DisplayInfinity(
                  width: width,
                  height: height,
                ) :
                data.isValueError ?
                DisplayError(
                  width: width,
                  height: height,
                ) :
                DisplayValue(
                  width: width,
                  height: height,
                  value: data.value,
                ),
                const Expanded(child: SizedBox()),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: iconWidth,
                      height: iconHeight,
                      child: (data.memory==null) ? null :
                      Center(
                        child: data.isMemoryError ?
                        SvgPicture.asset(
                          "assets/memory_error.svg",
                          key: const Key("ME"),
                          fit: BoxFit.contain,
                          color: Theme.of(context).colorScheme.displayForegroundError,
                        ) :
                        SvgPicture.asset(
                          "assets/memory.svg",
                          key: const Key("M"),
                          fit: BoxFit.contain,
                          color: Theme.of(context).colorScheme.displayForeground,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: iconWidth,
                      height: iconHeight,
                      child: (data.operationPath == null) ? null :
                      Center(
                        child: SvgPicture.asset(
                          data.operationPath!,
                          key: data.operationKey!,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: spaceWidth),
              ],
            );
          },
        ),
      ),
    );
  }
}

