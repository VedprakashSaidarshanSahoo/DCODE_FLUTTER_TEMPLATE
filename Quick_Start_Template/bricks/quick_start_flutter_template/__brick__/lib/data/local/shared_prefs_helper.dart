import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

// We need to access shared preferences to store and retrieve data locally.
// For that we can use the `shared_preferences` package.
// Below is the demo code for a helper class that uses shared preferences

// // Saving a string
// await SharedPrefsHelper.saveString('username', 'vedprakash');

// // Getting a string
// final username = await SharedPrefsHelper.getString('username');

// // Saving a JSON
// await SharedPrefsHelper.saveJson('profile', {'name': 'Ved', 'role': 'admin'});

// // Getting a JSON
// final profile = await SharedPrefsHelper.getJson('profile');

class SharedPrefsHelper {
  static Future<void> saveString(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  static Future<String?> getString(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  static Future<void> saveJson(String key, Map<String, dynamic> data) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonData = jsonEncode(data);
    await prefs.setString(key, jsonData);
  }

  static Future<Map<String, dynamic>?> getJson(String key) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString(key);
    return jsonString != null ? jsonDecode(jsonString) : null;
  }

  static Future<void> remove(String key) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }

  static Future<void> clearAll() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
