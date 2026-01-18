import 'package:flutter/material.dart';

class AppTheme {
  // Bohemian Color Palette
  static const Color cream = Color(0xFFF5E6CA);
  static const Color darkCream = Color(0xFFE6D2B5);
  static const Color mocha = Color(0xFF8D6E63);
  static const Color darkMocha = Color(0xFF5D4037);
  static const Color sageGreen = Color(0xFF8FA382);
  static const Color darkGreen = Color(0xFF556B2F);
  static const Color terracotta = Color(0xFFE07A5F);
  static const Color offWhite = Color(0xFFFAF9F6);

  static final ThemeData bohemianTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: offWhite,
    primaryColor: mocha,
    colorScheme: ColorScheme.fromSeed(
      seedColor: mocha,
      primary: mocha,
      secondary: sageGreen,
      surface: cream,
      // background: offWhite, // Deprecated
      error: terracotta,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: darkMocha,
      // onBackground: darkMocha, // Deprecated
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: cream,
      foregroundColor: darkMocha,
      elevation: 0,
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: darkMocha,
        fontFamily: 'Serif', // Placeholder for a serif font
      ),
      displayMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: darkMocha,
      ),
      bodyLarge: TextStyle(fontSize: 16, color: darkMocha),
      bodyMedium: TextStyle(fontSize: 14, color: darkMocha),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: mocha,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: darkCream),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: darkCream),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: mocha, width: 2),
      ),
      labelStyle: const TextStyle(color: mocha),
    ),
  );
}
