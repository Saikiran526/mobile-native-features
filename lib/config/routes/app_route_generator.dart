import 'package:flutter/material.dart';
import 'package:mobile_native_features/config/routes/app_routes.dart';
import 'package:mobile_native_features/infrastructure/constants/app_enum.dart';
import 'package:mobile_native_features/presentation/features/camera_feature/view/camera_feature.dart';
import 'package:mobile_native_features/presentation/features/home_screen/view/home_screen.dart';
import 'package:mobile_native_features/presentation/features/splash_screen/view/splash_screen.dart';

class AppRouteGenerator {
  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.homeScreen:
        return _buildPageRoute(const HomeScreen(), settings, transition: TransitionType.fade);
      case AppRoutes.splashScreen:
        return _buildPageRoute(const SplashScreen(), settings, transition: TransitionType.fade);
      case AppRoutes.cameraFeature:
        return _buildPageRoute(const CameraFeature(), settings, transition: TransitionType.slideFromRight );

      default:               // fade slideFromBottom   slideFromRight
        debugPrint('⚠️ Unknown route: ${settings.name}');
        return _errorRoute();
    }
  }

  static PageRouteBuilder _buildPageRoute(
      Widget page, RouteSettings settings, {TransitionType transition = TransitionType.defaultTransition}) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (_, __, ___) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        switch (transition) {
          case TransitionType.slideFromRight:
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1.0, 0.0), // from right
                end: Offset.zero,
              ).animate(CurvedAnimation(
                parent: animation,
                curve: Curves.easeInOut,
              )),
              child: child,
            );
          case TransitionType.slideFromBottom:
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0.0, 1.0),
                end: Offset.zero,
              ).animate(CurvedAnimation(
                parent: animation,
                curve: Curves.easeInOut,
              )),
              child: child,
            );
          case TransitionType.fade:
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          case TransitionType.defaultTransition:
          default:
            return child;
        }
      },
      transitionDuration: const Duration(milliseconds: 400),
    );
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder:
          (_) =>
              const Scaffold(body: Center(child: Text('Route not founded..!'))),
    );
  }

}
