import 'package:flutter/material.dart';
import 'package:personal_portfolio/theme/theme.dart';

extension ThemeDataExtension on ThemeData {
  static MyPalette? _paletteLight;
  static MyPalette? _paletteDark;
  static MyTypography? _typography;

  void init({
    required Color primaryKey,
  }) {
    _paletteLight = MyPalette(
      primaryKey: primaryKey,
      themeBrigthness: ThemeBrigthness.light,
    );
    _paletteDark = MyPalette(
      primaryKey: primaryKey,
      themeBrigthness: ThemeBrigthness.dark,
    );
    _typography = MyTypography();
  }

  MyPalette get myPalette {
    if (brightness == Brightness.light) {
      return _paletteLight!;
    } else {
      return _paletteDark!;
    }
  }

  MyTypography get myTypography => _typography!;
}
