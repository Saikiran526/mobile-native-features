import 'package:flutter/material.dart';
import 'package:mobile_native_features/config/routes/app_routes.dart';
import 'package:mobile_native_features/infrastructure/constants/body_constants.dart';
import 'package:mobile_native_features/infrastructure/constants/global_constants.dart';
import 'package:mobile_native_features/presentation/features/home_screen/viewmodel/home_screen_viewmodel.dart';
import 'package:mobile_native_features/services/navigation_service.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_)=>HomeScreenViewmodel(),
        child: Consumer<HomeScreenViewmodel>(builder: (context,viewModel,child){
          return Scaffold(
            extendBodyBehindAppBar: true,
            body: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Theme.of(context).colorScheme.primary,
                        Theme.of(context).colorScheme.secondary,
                      ],
                    stops: [0.0,0.9]
                  )
                ),
                child: SafeArea(
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(BodyConstants.mobileNativeFeatures,style: TextStyle(fontSize: GlobalConstants.headingBig,color: Theme.of(context).colorScheme.onPrimary),),
                          Text(BodyConstants.homeScreenSubHeading,),
                        ],
                      ),
                      SizedBox(height: GlobalConstants.paddingLarge,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: viewModel.selectedTeb==1 ? Theme.of(context).colorScheme.primary : Colors.transparent,
                                  width: 3
                                )
                              ),
                            ),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.transparent
                                ) ,
                                onPressed: () {
                                  viewModel.setSelectedTab=1;
                                },
                                child: Text('Device',style: TextStyle(fontSize: GlobalConstants.body,color: Theme.of(context).colorScheme.onPrimary))
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: viewModel.selectedTeb==2 ? Theme.of(context).colorScheme.primary : Colors.transparent,
                                  width: 3
                                )
                              ),
                            ),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.transparent
                                ) ,
                                onPressed: () {
                                  viewModel.setSelectedTab=2;
                                },
                                child: Text('Media',style: TextStyle(fontSize: GlobalConstants.body,color: Theme.of(context).colorScheme.onPrimary))
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: viewModel.selectedTeb==3 ? Theme.of(context).colorScheme.primary : Colors.transparent,
                                  width: 3
                                )
                              ),
                            ),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.transparent
                                ) ,
                                onPressed: () {
                                  viewModel.setSelectedTab=3;
                                },
                                child: Text('Sensors',style: TextStyle(fontSize: GlobalConstants.body,color: Theme.of(context).colorScheme.onPrimary))
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: viewModel.selectedTeb==4 ? Theme.of(context).colorScheme.primary : Colors.transparent,
                                  width: 3
                                )
                              ),
                            ),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.transparent
                                ) ,
                                onPressed: () {
                                  viewModel.setSelectedTab=4;
                                },
                                child: Text('System',style: TextStyle(fontSize: GlobalConstants.body,color: Theme.of(context).colorScheme.onPrimary))
                            ),
                          ),
                        ],
                      ),
                      if(viewModel.selectedTeb==1)
                        Flexible(
                          child: GridView.builder(
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 8,
                                  mainAxisSpacing: 8
                              ),
                              itemCount: viewModel.deviceFeaturesList.length,
                              itemBuilder:(context,index){
                                final feature=viewModel.deviceFeaturesList[index];
                                return GestureDetector(
                                  onTap: (){
                                    if(index==0){
                                      Navigation.instance.navigateTo(AppRoutes.cameraFeature);
                                    }
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(GlobalConstants.d11),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          boxShadow:[
                                            BoxShadow(
                                              color: Colors.black.withOpacity(0.1),
                                            )
                                          ] ,
                                          borderRadius: BorderRadius.all(Radius.circular(GlobalConstants.d10))
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(GlobalConstants.d11),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(GlobalConstants.d11),
                                              child: Icon(feature.icon,size: GlobalConstants.d50,),
                                            ),
                                            Flexible(child: Text(feature.title,style: TextStyle(fontSize: GlobalConstants.d25),)),
                                            Flexible(child: Text(feature.subtitle,)),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }
                          ),
                        )
                    ],
                  ),
                )),
          );
        }),
    );
  }
}

