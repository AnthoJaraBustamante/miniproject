import 'package:flutter/material.dart';

final themeData = ThemeData(
  primaryColor: Colors.teal,
  scaffoldBackgroundColor: Colors.grey[100],
  appBarTheme: const AppBarTheme(
    color: Colors.teal,
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.teal),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.teal,
    ),
  ),
);
