import 'package:flutter/material.dart';
import 'package:prayer_timing/features/prayer_timing/presentation/screens/home/home_screen.dart';
import 'package:prayer_timing/features/prayer_timing/presentation/screens/home/splash/splah_screen.dart';

class Routes {
  static const String splashRoute = "/";
  static const String home = "/home";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const Home());
      default:
        return unDefinedRoute();
    } // switch
  } // getRoute

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(),
              body: const Center(
                child: Text(
                  "No Route Found ...",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ));
  }
}
