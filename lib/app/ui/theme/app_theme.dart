import 'package:flutter/material.dart';

final themeData = ThemeData(
  primaryColor: Colors.teal,
  scaffoldBackgroundColor: Colors.grey[100],
  appBarTheme: const AppBarTheme(
    color: Colors.teal,
    foregroundColor: Colors.white,
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.teal),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.teal,
      foregroundColor: Colors.white,
    ),
  ),
  useMaterial3: true,
);
