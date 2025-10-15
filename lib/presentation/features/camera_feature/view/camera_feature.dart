import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_native_features/config/routes/app_routes.dart';
import 'package:mobile_native_features/infrastructure/theme/app_theme.dart';
import 'package:mobile_native_features/presentation/features/camera_feature/viewmodel/camera_feature_viewmodel.dart';
import 'package:provider/provider.dart';

class CameraFeature extends StatelessWidget {
  const CameraFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_)=>CameraFeatureViewModel(),
      child: Consumer(
          builder: (context,viewModel,child){
            return Scaffold(
              appBar: AppBar(
                title: Text(AppRoutes.cameraFeature),
                backgroundColor: AppTheme.lightTheme.primaryColor,
              ),
              body: Padding(
                padding: EdgeInsets.all(11),
                child:Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                    Container(
                      height: MediaQuery.of(context).size.height*0.3,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.grey,
                      ),
                      child: Icon(Icons.image),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.06,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              )
                            ),
                            onPressed: (){},
                            child: const Text('Capture Image'),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width*0.1,),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                          onPressed: (){},
                          child: const Text('Record Video'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}
