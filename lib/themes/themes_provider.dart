import 'package:flutter/material.dart';
import 'package:myapp/themes/dark_mode.dart';
import 'package:myapp/themes/light_mode.dart';

class ThemeProvider extends ChangeNotifier {
  // Initial Theme Data
  ThemeData _themeData = lightMode;

  // Get Theme Data
  ThemeData get themeData => _themeData;

  // is Dark
  bool get isDarkMode => _themeData == darkMode;

  // set Theme 
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if(_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}