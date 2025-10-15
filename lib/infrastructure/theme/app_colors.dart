import 'package:flutter/material.dart';

class AppColors {
  // 🌈 Brand Colors
  static const Color primary = Color(0xFF4C8BF5);          // Main brand color
  static const Color secondary = Colors.black;        // Accent color
  static const Color tertiary = Color(0xFFFFB74D);         // Optional highlight color

  // 🖤 Background & Surface
  static const Color backgroundLight = Color(0xFFF6F8FA);  // Scaffold light background
  static const Color backgroundDark = Color(0xFF121212);   // Scaffold dark background
  static const Color surfaceLight = Colors.white;          // Cards, dialogs light
  static const Color surfaceDark = Color(0xFF1E1E1E);      // Cards, dialogs dark

  // ⚙️ Containers
  static const Color primaryContainer = Color(0xFF0D47A1);     // Filled primary container
  static const Color secondaryContainer = Color(0xFF004D40);   // Filled secondary container
  static const Color tertiaryContainer = Color(0xFFFF8A00);    // Filled tertiary container

  // 🚨 Error & Outlines
  static const Color error = Color(0xFFD32F2F);                // Error states
  static const Color outline = Color(0xFFBDBDBD);              // Borders / dividers light
  static const Color outlineVariant = Color(0xFF757575);       // Borders / dividers dark

  // Optional: Shadow & Scrim (used in ColorScheme)
  static const Color shadowLight = Colors.black12;
  static const Color shadowDark = Colors.black45;
  static const Color scrimLight = Colors.black26;
  static const Color scrimDark = Colors.black87;
}
