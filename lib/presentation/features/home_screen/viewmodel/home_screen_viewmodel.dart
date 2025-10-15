import 'package:flutter/material.dart';
import 'package:mobile_native_features/presentation/features/home_screen/model/feature_details.dart';

class HomeScreenViewmodel extends ChangeNotifier {

  // State
  int _selectedTeb=1;
  final List<FeatureDetails> _deviceFeaturesList=[
    FeatureDetails(
        icon: Icons.camera_alt,
        title: 'Camera Access',
        subtitle: 'Capture images and videos using native API'
    ),
    FeatureDetails(
        icon: Icons.music_note,
        title: 'Audio player',
        subtitle: 'play music from player'
    ),
    FeatureDetails(
        icon: Icons.notifications ,
        title: 'Notifications',
        subtitle: 'Get system notifications'
    ),
    FeatureDetails(
        icon: Icons.location_on,
        title: 'GPS Tracker',
        subtitle: 'Get real-time location'
    ),
  ];

  // Getters
  int get selectedTeb=>_selectedTeb;
  List<FeatureDetails> get deviceFeaturesList=>_deviceFeaturesList;

  // Setters
    set setSelectedTab(int newSelectedTab){
      _selectedTeb=newSelectedTab;
      notifyListeners();
    }

  // Behaviour


}