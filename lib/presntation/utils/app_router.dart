import 'package:flutter/material.dart';
import 'package:movie_app/presntation/screens/home/home.dart';
import 'package:movie_app/presntation/screens/splash/splash.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case 'home':
        return MaterialPageRoute(builder: (_) => HomeScreen());
    }
  }
}
