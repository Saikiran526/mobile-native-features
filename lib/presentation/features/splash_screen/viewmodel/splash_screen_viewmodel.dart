import 'package:flutter/cupertino.dart';

class SplashScreenViewmodel extends ChangeNotifier{

  SplashScreenViewmodel(){
    _initializer();
  }

  //state
  final String _heading="Mobile native features..!";
  VoidCallback? onNavigate;

  //getters
  String get heading=>_heading;

  //utils
  void _initializer() async {

    await Future.delayed(const Duration(seconds: 3));
    if(onNavigate!=null){
      onNavigate!();
    }

  }

}