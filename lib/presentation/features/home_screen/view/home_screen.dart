import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_native_features/infrastructure/constants/body_constants.dart';
import 'package:mobile_native_features/infrastructure/constants/global_constants.dart';
import 'package:mobile_native_features/infrastructure/constants/screen_titles.dart';
import 'package:mobile_native_features/presentation/features/home_screen/viewmodel/home_screen_viewmodel.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_)=>HomeScreenViewmodel(),
        child: Consumer(builder: (context,viewModel,child){
          return Scaffold(
            appBar: AppBar(
              title: Text(ScreenTitles.homeScreenTitle,style: TextStyle(fontSize: GlobalConstants.heading1),),
              backgroundColor: Colors.blue,
            ),
            body: Center(child: Text(BodyConstants.homeScreenText,style: TextStyle(fontSize: GlobalConstants.heading1),)),
          );
        }),
    );
  }
}
