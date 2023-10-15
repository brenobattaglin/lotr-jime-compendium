import 'package:flutter/material.dart';

import 'config/config.dart';

class App extends StatefulWidget {
  const App._internal(); //private named constructor

  static const App instance = App._internal(); // single instance/singleton

  factory App() => instance; // factory for the class instance

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Themes.getAppTheme(),
      initialRoute: Routes.splashRoute,
      onGenerateRoute: RouteGenerator.getRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
