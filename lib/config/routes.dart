import 'package:flutter/material.dart';
import 'package:jime_compendium/presentation/splash/splash.dart';
import 'package:jime_compendium/presentation/unknown/unknown.dart';
import 'package:jime_compendium/presentation/work_in_progress/work_in_progress.dart';

import '../presentation/onboarding/onboarding.dart';

class Routes {
  static const String splashRoute = '/';
  static const String onboardingRoute = '/onboarding';
  static const String workInProgressRoute = '/wip';
}

class RouteGenerator {
  static Route<MaterialPageRoute> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.onboardingRoute:
        return MaterialPageRoute(builder: (_) => const OnboardingView());
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.workInProgressRoute:
        return MaterialPageRoute(builder: (_) => const WorkInProgressView());
      default:
        return MaterialPageRoute(builder: (_) => const UnknownView());
    }
  }
}
