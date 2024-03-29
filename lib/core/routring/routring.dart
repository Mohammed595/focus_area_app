import 'package:flutter/material.dart';
import 'package:focus_area_app/core/routring/routers.dart';
import 'package:focus_area_app/features/home_screen.dart/ui/screen/home_screen.dart';
import 'package:focus_area_app/features/onbaording.dart/view/screen/main_screen_onbourding.dart';
import 'package:focus_area_app/splash_screen.dart';

class AppRouteing {
  static Route<dynamic>? onGenerateRoute(RouteSettings s) {
    switch (s.name) {
      case Routers.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routers.onBoadingScreen:
        return MaterialPageRoute(builder: (_) => const MainPageOnBoarding());
      case Routers.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      default:
        return MaterialPageRoute(builder: (_) => SplashScreen());
    }
  }
}
