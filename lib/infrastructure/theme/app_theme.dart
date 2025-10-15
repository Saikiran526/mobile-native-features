import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  // 🌞 Light ColorScheme
  static const ColorScheme _lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.primary,
    onPrimary: Colors.white,
    primaryContainer: AppColors.primaryContainer,
    onPrimaryContainer: Colors.white,
    secondary: AppColors.secondary,
    onSecondary: Colors.white,
    secondaryContainer: AppColors.secondaryContainer,
    onSecondaryContainer: Colors.black,
    tertiary: AppColors.tertiary,
    onTertiary: Colors.black,
    tertiaryContainer: AppColors.tertiaryContainer,
    onTertiaryContainer: Colors.black,
    background: AppColors.backgroundLight,
    onBackground: Colors.black87,
    surface: AppColors.surfaceLight,
    onSurface: Colors.black87,
    error: AppColors.error,
    onError: Colors.white,
    outline: AppColors.outline,
    outlineVariant: AppColors.outlineVariant,
    shadow: Colors.black12,
    scrim: Colors.black26,
    surfaceTint: AppColors.primary,
  );

  // 🌚 Dark ColorScheme
  static const ColorScheme _darkColorScheme = ColorScheme(
    brightness: Brightness.dark,

    primary: AppColors.primary,
    onPrimary: Colors.white,
    primaryContainer: AppColors.primaryContainer,
    onPrimaryContainer: Colors.white,
    secondary: AppColors.secondary,
    onSecondary: Colors.black,
    secondaryContainer: AppColors.secondaryContainer,
    onSecondaryContainer: Colors.white,
    tertiary: AppColors.tertiary,
    onTertiary: Colors.black,
    tertiaryContainer: AppColors.tertiaryContainer,
    onTertiaryContainer: Colors.white,
    background: AppColors.backgroundDark,
    onBackground: Colors.white70,
    surface: AppColors.surfaceDark,
    onSurface: Colors.white70,
    error: AppColors.error,
    onError: Colors.white,
    outline: AppColors.outlineVariant,
    outlineVariant: AppColors.outline,
    shadow: Colors.black45,
    scrim: Colors.black87,
    surfaceTint: AppColors.primary,
  );

  // 💡 LIGHT THEME
  static final ThemeData lightTheme = ThemeData(
    colorScheme: _lightColorScheme,
    useMaterial3: true,
    scaffoldBackgroundColor: _lightColorScheme.background,
    appBarTheme: AppBarTheme(
      backgroundColor: _lightColorScheme.primary,
      foregroundColor: _lightColorScheme.onPrimary,
      centerTitle: true,
      elevation: 2,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: _lightColorScheme.onPrimary,
      ),
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: _lightColorScheme.onBackground),
      headlineSmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: _lightColorScheme.onBackground),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor:
        MaterialStateProperty.all(_lightColorScheme.primary),
        foregroundColor:
        MaterialStateProperty.all(_lightColorScheme.onPrimary),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
          foregroundColor:
          MaterialStateProperty.all(_lightColorScheme.onPrimary)
      )
    )
  );

  // 🌑 DARK THEME
  static final ThemeData darkTheme = ThemeData(
    colorScheme: _darkColorScheme,
    useMaterial3: true,
    scaffoldBackgroundColor: _darkColorScheme.background,
    appBarTheme: AppBarTheme(
      backgroundColor: _darkColorScheme.primary,
      foregroundColor: _darkColorScheme.onPrimary,
      centerTitle: true,
      elevation: 2,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: _darkColorScheme.onPrimary,
      ),
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: _darkColorScheme.onBackground),
      headlineSmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: _darkColorScheme.onBackground),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor:
        MaterialStateProperty.all(_darkColorScheme.primary),
        foregroundColor:
        MaterialStateProperty.all(_darkColorScheme.onPrimary),
      ),
    ),
  );
}
