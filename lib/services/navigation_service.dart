import 'package:flutter/cupertino.dart';

class Navigation {

  late GlobalKey<NavigatorState> navigationKey;
  static final instance =Navigation();
  Navigation(){
    navigationKey=GlobalKey<NavigatorState>();
  }

  //Navigation's
  Future<dynamic> navigateTo(String routName,{Object? args,}){
    return _safeNavigation(() =>navigationKey.currentState!.pushNamed(routName,arguments: args));
  }

  //Helper for smooth navigation


  Future<T?> _safeNavigation<T>(Future<T?> Function() action) {
    final state = navigationKey.currentState;
    if (state == null) {
      throw Exception("Navigator not initialized. Check navigatorKey setup!");
    }
    return action();
  }
  //-----Delete after knowing the difference -----
  // Future<dynamic> _safeNavigation(Future<dynamic> Function() action) async {
  //   if(navigationKey.currentState==null){
  //     throw Exception("Navigation state is null.Check navigator key initialization..!");
  //   }
  //   return action;
  // }
}