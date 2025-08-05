import 'package:flutter/material.dart';
import '../app_theme_data.dart';

AppThemeData darkColorfulTheme = AppThemeData(
  materialTheme: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.teal,
    scaffoldBackgroundColor: Colors.grey[900],
    appBarTheme: const AppBarTheme(
      color: Colors.teal,
      foregroundColor: Colors.white,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.tealAccent,
    ),
  ),
  backgroundColor: Colors.grey.shade900,
  foregroundColor: Colors.tealAccent,
  primaryColor: Colors.teal,
  heading: const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.tealAccent,
  ),
  subHeading: const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Colors.cyan,
  ),
  body: const TextStyle(fontSize: 14, color: Colors.white60),
  padding: 16,
  borderRadius: 16,
);
