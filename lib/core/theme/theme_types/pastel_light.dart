import 'package:flutter/material.dart';
import '../app_theme_data.dart';

AppThemeData pastelLightTheme = AppThemeData(
  materialTheme: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.pink.shade100,
    scaffoldBackgroundColor: Colors.pink.shade50,
    appBarTheme: AppBarTheme(
      color: Colors.pink.shade100,
      foregroundColor: Colors.grey.shade800,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.teal.shade200,
    ),
  ),
  backgroundColor: Colors.pink.shade50,
  foregroundColor: Colors.grey.shade800,
  primaryColor: Colors.pink.shade200,
  heading: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.grey.shade800,
  ),
  subHeading: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Colors.teal.shade700,
  ),
  body: TextStyle(fontSize: 14, color: Colors.grey.shade600),
  padding: 16,
  borderRadius: 14,
);
