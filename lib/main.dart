import 'package:flutter/material.dart';
import 'package:mobile_native_features/config/routes/app_route_generator.dart';
import 'package:mobile_native_features/config/routes/app_routes.dart';
import 'package:mobile_native_features/services/navigation_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      navigatorKey: Navigation.instance.navigationKey,
      onGenerateRoute: AppRouteGenerator.generate,
      initialRoute: AppRoutes.splashScreen,
    );
  }
}
