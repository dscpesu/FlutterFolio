import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return themeData(Brightness.light);
  }

  static ThemeData darkTheme() {
    return themeData(Brightness.dark);
  }

  static ThemeData themeData(Brightness brightness) {
    final bool isDark = brightness == Brightness.dark;

    final Color primaryColor = Color(0xFF1565C0);
    final Color accentColor = Color(0xFF64B5F6);

    final Color foregroundColor = isDark ? Colors.white : Colors.black;
    final Color backgroundColor = isDark ? Colors.black87 : Color(0xFFFAFAFA); // Off-white for light mode

    final ColorScheme colorScheme = ColorScheme(
      brightness: brightness,
      primary: primaryColor,
      secondary: accentColor,
      background: backgroundColor,
      surface: backgroundColor,
      error: Colors.red,
      onPrimary: foregroundColor,
      onSecondary: foregroundColor,
      onBackground: foregroundColor,
      onSurface: foregroundColor,
      onError: isDark ? Colors.black : Colors.white,
    );

    return ThemeData(
      primaryColor: primaryColor,
      colorScheme: colorScheme,
      brightness: brightness,
      scaffoldBackgroundColor: backgroundColor,
      textTheme: TextTheme(
        bodyText1: TextStyle(fontSize: 16, color: foregroundColor),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(primaryColor),
          foregroundColor: MaterialStateProperty.all(foregroundColor),
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: primaryColor,
        foregroundColor: foregroundColor,
      ),
    );
  }
}
