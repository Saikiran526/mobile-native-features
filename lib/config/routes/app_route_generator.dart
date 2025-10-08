import 'package:flutter/material.dart';
import 'package:mobile_native_features/config/routes/app_routes.dart';
import 'package:mobile_native_features/presentation/features/home_screen/view/home_screen.dart';
import 'package:mobile_native_features/presentation/features/splash_screen/view/splash_screen.dart';

class AppRouteGenerator {
  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case AppRoutes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      default:
        debugPrint('⚠️ Unknown route: ${settings.name}');
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder:
          (_) =>
              const Scaffold(body: Center(child: Text('Route not founded..!'))),
    );
  }
}
