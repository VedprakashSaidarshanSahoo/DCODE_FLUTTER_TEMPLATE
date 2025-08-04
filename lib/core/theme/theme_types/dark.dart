import 'package:flutter/material.dart';
import '../app_theme_data.dart';

AppThemeData darkTheme = AppThemeData(
  materialTheme: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.grey,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      color: Colors.black87,
      foregroundColor: Colors.white,
    ),
  ),
  backgroundColor: Colors.black,
  foregroundColor: Colors.white,
  primaryColor: Colors.grey,
  heading: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
  subHeading: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white70),
  body: const TextStyle(fontSize: 14, color: Colors.white60),
  padding: 16,
  borderRadius: 12,
);
