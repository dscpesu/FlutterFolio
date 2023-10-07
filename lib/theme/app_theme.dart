import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme() {
    final Color primaryColor = Color(0xFF1565C0); // A shade of blue
    final Color accentColor =
        Color(0xFF64B5F6); // A lighter shade of blue for accents

    final ColorScheme colorScheme = ColorScheme(
        brightness: Brightness.light,
        primary: primaryColor,
        secondary: accentColor,
        error: Colors.red, // Specify your error color here
        onPrimary: Colors.white,
        onSecondary: Colors.black,
        surface: Colors.white, // Background color
        background: Colors.white,
        onSurface: Colors.black, // Text color on the background
        onBackground: Colors.black,
        onError: Colors.white);

    return ThemeData(
      primaryColor: primaryColor,
      colorScheme: colorScheme,
      brightness: Brightness.light, // Specify the brightness
      scaffoldBackgroundColor: Colors.white, // White background
      textTheme: TextTheme(
        bodyText1: TextStyle(fontSize: 16, color: Colors.black), // Black text
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(primaryColor),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
    );
  }
}
