import 'package:flutter/material.dart';
import 'package:nordangler/config/palette.dart';

ThemeData _getThemeData({required bool isDarkMode}) {
  return ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: nordanglerBlue,
      ),
      colorScheme: _getColorScheme(
        isDarkMode: isDarkMode,
      ));
}

ThemeData getLightTheme() {
  return _getThemeData(isDarkMode: false);
}

ColorScheme _getColorScheme({required bool isDarkMode}) {
  return ColorScheme.fromSeed(
    seedColor: nordanglerBlue,
    primary: nordanglerBlue,
    brightness: isDarkMode ? Brightness.dark : Brightness.light,
  );
}
