import 'package:flutter/material.dart';
import 'package:mobile_native_features/infrastructure/constants/global_constants.dart';
import 'package:mobile_native_features/infrastructure/utils/screen_utils.dart';
import 'package:mobile_native_features/presentation/features/home_screen/view/home_screen.dart';
import 'package:mobile_native_features/presentation/features/splash_screen/viewmodel/splash_screen_viewmodel.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SplashScreenViewmodel(),
      child: Builder(
        builder: (context) {
          ScreenUtil.init(context);
          return Consumer<SplashScreenViewmodel>(
            builder: (context, viewModel, child) {
              viewModel.onNavigate ??= () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => HomeScreen()),
                );
              };
              return Scaffold(
                body: Center(
                  child: Text(
                    viewModel.heading,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: GlobalConstants.heading,
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
