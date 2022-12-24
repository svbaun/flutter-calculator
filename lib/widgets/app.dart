part of widgets;

class App extends StatefulWidget {
  
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {

  ThemeMode _themeMode = ThemeMode.light;

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    _themeMode = _getThemeMode();
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangePlatformBrightness() {
    if (mounted) {
      setState(() {
        _themeMode = _getThemeMode();
      });
    }
    super.didChangePlatformBrightness();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: _themeMode,
      home: BlocProvider(                
        create: (context) => ViewBloc(),
        child: const View(),
      ),
    );
  }

  ThemeMode _getThemeMode() {
    final Brightness brightness = WidgetsBinding.instance.window.platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;
    return isDarkMode ? ThemeMode.dark : ThemeMode.light;
  }
}

