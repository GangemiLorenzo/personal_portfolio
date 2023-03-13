import 'package:flutter/material.dart';
import 'package:personal_portfolio/theme/theme.dart';

class ThemeRepo extends ChangeNotifier {
  var _primaryKeyColor = const Color.fromARGB(255, 0, 196, 255);

  MyIcons? _myIcons;
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

  ThemeData get lightTheme =>
      ThemeData(useMaterial3: true, colorScheme: lightColorScheme);

  ThemeData get darkTheme =>
      ThemeData(useMaterial3: true, colorScheme: darkColorScheme);

  MyIcons get myIcons {
    _myIcons = _myIcons ?? MyIcons();
    return _myIcons!;
  }
}
