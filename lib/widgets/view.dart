part of widgets;

/// Основное view приложения
class View extends StatelessWidget {
  
  const View({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final BorderRadius radius = BorderRadius.circular(((size.width > size.height) ? size.height : size.width)*0.02);
    const sw = SwitchLayout();
    sw.detectPosition(context);
    return Scaffold(
      body: BlocBuilder<ViewBloc, ViewData>(
        builder: (context, data) => Keyboard(
          layout: data.layout,
          child: Column(
            children: [
              Expanded(flex: data.layout.spaceHeight, child: const SizedBox()),
              Expanded(
                flex: 10,
                child: Row(
                  children: [
                    Expanded(flex: data.layout.spaceWidth, child: const SizedBox()),
                    Expanded(
                      flex: data.layout.displayWidth,
                      child: Display(
                        data: data,
                        radius: radius,
                      ),
                    ),
                    Expanded(flex: data.layout.spaceWidth, child: const SizedBox()),
                  ],
                ),
              ),
              Expanded(flex: data.layout.spaceHeight, child: const SizedBox()),
              ...List<Widget>.generate(data.layout.list.length * 2, (rowIndex) {
                if (rowIndex % 2 == 1) return Expanded(flex: data.layout.spaceHeight, child: const SizedBox());
                int rInd = rowIndex >> 1;
                return Expanded(
                  flex: data.layout.buttonHeight,
                  child: Row(
                    children: [
                      Expanded(flex: data.layout.spaceWidth, child: const SizedBox()),
                      ...List<Widget>.generate(data.layout.list[rInd].length * 2, (colIndex) {
                        if (colIndex % 2 == 1) return Expanded(flex: data.layout.spaceWidth, child: const SizedBox());
                        int cInd = colIndex >> 1;
                        return Expanded(
                          flex: data.layout.buttonWidth,
                          child: Button(
                            event: data.layout.list[rInd][cInd],
                            radius: radius,
                          ),
                        );
                      }),
                    ],
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}

