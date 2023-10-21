import 'package:flutter/material.dart';
import 'package:jime_compendium/presentation/resources/strings.dart';

class Routes {
  static const String splashRoute = '/';
}
class RouteGenerator {
  static Route<MaterialPageRoute> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
    
      default:
        return undefinedRoute();
    }
  }

  static Route<MaterialPageRoute> undefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text(AppStrings.noRouteFound)),
        body: const Center(child: Text(AppStrings.noRouteFound)),
      ),
    );
  }