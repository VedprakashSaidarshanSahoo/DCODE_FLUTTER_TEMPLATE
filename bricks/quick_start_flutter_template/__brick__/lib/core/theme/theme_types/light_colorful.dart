import 'package:flutter/material.dart';
import '../app_theme_data.dart';

AppThemeData lightColorfulTheme = AppThemeData(
  materialTheme: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.deepPurple,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      color: Colors.deepPurple,
      foregroundColor: Colors.white,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.pink,
    ),
  ),
  backgroundColor: Colors.white,
  foregroundColor: Colors.deepPurple,
  primaryColor: Colors.deepPurple,
  heading: const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.deepPurple,
  ),
  subHeading: const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Colors.pink,
  ),
  body: const TextStyle(fontSize: 14, color: Colors.black87),
  padding: 16,
  borderRadius: 16,
);
