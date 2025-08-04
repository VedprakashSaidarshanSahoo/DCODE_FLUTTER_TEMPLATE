import 'package:flutter/material.dart';
import '../app_theme_data.dart';

AppThemeData neonDarkTheme = AppThemeData(
  materialTheme: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.cyanAccent,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      color: Colors.black,
      foregroundColor: Colors.cyanAccent,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.purpleAccent,
    ),
  ),
  backgroundColor: Colors.black,
  foregroundColor: Colors.cyanAccent,
  primaryColor: Colors.purpleAccent,
  heading: const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.cyanAccent,
  ),
  subHeading: const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Colors.purpleAccent,
  ),
  body: const TextStyle(fontSize: 14, color: Colors.white70),
  padding: 20,
  borderRadius: 18,
);
