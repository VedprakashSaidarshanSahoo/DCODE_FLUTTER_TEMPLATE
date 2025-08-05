import 'package:flutter/material.dart';

class AppThemeData {
  final ThemeData materialTheme;
  final Color backgroundColor;
  final Color foregroundColor;
  final Color primaryColor;
  final TextStyle heading;
  final TextStyle subHeading;
  final TextStyle body;
  final double padding;
  final double borderRadius;

  AppThemeData({
    required this.materialTheme,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.primaryColor,
    required this.heading,
    required this.subHeading,
    required this.body,
    required this.padding,
    required this.borderRadius,
  });
}
