import 'package:flutter/material.dart';

import 'theme_data.dart';

class ThemeRepo extends ChangeNotifier {
  var _primaryKeyColor = const Color.fromARGB(255, 0, 196, 255);

  Color get primaryKeyColor => _primaryKeyColor;

  set primaryColor(color) {
    _primaryKeyColor = color;

    notifyListeners();
  }

  ThemeMode _themeMode = ThemeMode.dark;

  ThemeMode? get themeMode => _themeMode;

  void switchTheme() {
    if (_themeMode == ThemeMode.dark) {
      _themeMode = ThemeMode.light;
    } else if (_themeMode == ThemeMode.light) {
      _themeMode = ThemeMode.dark;
    }
    notifyListeners();
  }

  ThemeData get lightTheme {
    return getLightTheme(
      primaryKey: _primaryKeyColor,
    );
  }

  ThemeData get darkTheme {
    return getDarkTheme(
      primaryKey: _primaryKeyColor,
    );
  }
}
