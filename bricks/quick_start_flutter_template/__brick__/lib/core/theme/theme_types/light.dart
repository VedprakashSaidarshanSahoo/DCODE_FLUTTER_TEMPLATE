import 'package:flutter/material.dart';
import '../app_theme_data.dart';

AppThemeData lightTheme = AppThemeData(
  materialTheme: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      color: Colors.blue,
      foregroundColor: Colors.white,
    ),
  ),
  backgroundColor: Colors.white,
  foregroundColor: Colors.black,
  primaryColor: Colors.blue,
  heading: const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  ),
  subHeading: const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Colors.black87,
  ),
  body: const TextStyle(fontSize: 14, color: Colors.black54),
  padding: 16,
  borderRadius: 12,
);
