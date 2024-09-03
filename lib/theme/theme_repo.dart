import 'package:flutter/material.dart';
import 'package:personal_portfolio/theme/theme.dart';

enum MyThemeColor {
  FIRE,
  WATER,
  GRASS,
}

class ThemeRepo extends ChangeNotifier {
  var _primaryKeyColor = const Color.fromARGB(255, 0, 196, 255);

  MyIcons? _myIcons;
  Color get primaryKeyColor => _primaryKeyColor;

  set primaryColor(color) {
    _primaryKeyColor = color;

    notifyListeners();
  }

  MyThemeColor _themeColor = MyThemeColor.WATER;

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

  void switchColor() {
    if (_themeMode == ThemeMode.dark) {
      _themeMode = ThemeMode.light;
    } else if (_themeMode == ThemeMode.light) {
      _themeMode = ThemeMode.dark;
    }
    notifyListeners();
  }

  ThemeData get lightTheme => switch (_themeColor) {
        MyThemeColor.FIRE => ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.redAccent,
              brightness: Brightness.light,
            ),
          ),
        MyThemeColor.WATER => ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.blueAccent,
              brightness: Brightness.light,
            ),
          ),
        MyThemeColor.GRASS => ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.greenAccent,
              brightness: Brightness.light,
            ),
          ),
      };

  ThemeData get darkTheme => switch (_themeColor) {
        MyThemeColor.FIRE => ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.redAccent,
              brightness: Brightness.dark,
            ),
          ),
        MyThemeColor.WATER => ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.blueAccent,
              brightness: Brightness.dark,
            ),
          ),
        MyThemeColor.GRASS => ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.greenAccent,
              brightness: Brightness.dark,
            ),
          ),
      };

  //ThemeData get lightTheme => ThemeData(colorScheme: lightColorScheme);

  //ThemeData get darkTheme => ThemeData(colorScheme: darkColorScheme);

  MyIcons get myIcons {
    _myIcons = _myIcons ?? MyIcons();
    return _myIcons!;
  }
}
