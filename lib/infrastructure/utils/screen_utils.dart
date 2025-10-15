import 'package:flutter/material.dart';

class ScreenUtil {
  static late double screenWidth;
  static late double textScaleFactor;

  static void init(BuildContext context) {
    final mq = MediaQuery.of(context);
    screenWidth = mq.size.width;
    textScaleFactor = mq.textScaleFactor;
  }

  static double _scale(double base) => (base * screenWidth / 375) / textScaleFactor;

  // Font Sizes
  static double get heading1 => _scale(24);
  static double get headingBig => _scale(30);
  static double get headingSmall => _scale(20);
  static double get subheading => _scale(18);
  static double get body => _scale(16);
  static double get caption => _scale(14);
  static double get small => _scale(12);

  // Icon sizes
  static double get iconSmall => _scale(18);
  static double get iconMedium => _scale(24);
  static double get iconLarge => _scale(32);

  // Spacing
  static double get paddingSmall => _scale(8);
  static double get paddingMedium => _scale(16);
  static double get paddingLarge => _scale(24);

  // Custom font size
  static double font(double size) => _scale(size);

}
