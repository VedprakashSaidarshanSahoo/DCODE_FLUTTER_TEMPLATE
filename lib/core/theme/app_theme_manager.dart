import 'package:flutter/material.dart';
import 'app_theme_type.dart';
import 'app_theme_data.dart';
import 'theme_types/dark.dart';
import 'theme_types/dark_colorful.dart';
import 'theme_types/light.dart';
import 'theme_types/light_colorful.dart';
import 'theme_types/neon_dark.dart';
import 'theme_types/pastel_light.dart';

class AppThemeManager with ChangeNotifier {
  static final AppThemeManager _instance = AppThemeManager._internal();
  AppThemeManager._internal();

  factory AppThemeManager() => _instance;

  late AppThemeType _currentType;
  late AppThemeData _currentTheme;

  AppThemeData get theme => _currentTheme;
  AppThemeType get type => _currentType;

  void init(AppThemeType initialType) {
    _currentType = initialType;
    _currentTheme = _resolveTheme(initialType);
  }

  void switchTheme(AppThemeType newType) {
    _currentType = newType;
    _currentTheme = _resolveTheme(newType);
    notifyListeners();
  }

  AppThemeData _resolveTheme(AppThemeType type) {
    switch (type) {
      case AppThemeType.dark:
        return darkTheme;
      case AppThemeType.lightColorful:
        return lightColorfulTheme;
      case AppThemeType.darkColorful:
        return darkColorfulTheme;
      case AppThemeType.light:
        return lightTheme;
      case AppThemeType.neonDark:
        return neonDarkTheme;
      case AppThemeType.pastelLight:
        return pastelLightTheme;
      default:
        return lightTheme;
    }
  }
}
