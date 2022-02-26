import 'package:flutter/material.dart';
import 'package:material_color_utilities/scheme/scheme.dart';

enum ThemeBrigthness {
  dark,
  light,
}

class MyPalette {
  MyPalette({
    required Color primaryKey,
    required ThemeBrigthness themeBrigthness,
  }) {
    _generateMaterialPalette(
      themeBrigthness,
      primaryKey,
    );
  }

  late Color primary;
  late Color onPrimary;
  late Color primaryContainer;
  late Color onPrimaryContainer;

  late Color secondary;
  late Color onSecondary;
  late Color secondaryContainer;
  late Color onSecondaryContainer;

  late Color tertiary;
  late Color onTertiary;
  late Color tertiaryContainer;
  late Color onTertiaryContainer;

  late Color error;
  late Color onError;
  late Color errorContainer;
  late Color onErrorContainer;

  late Color background;
  late Color onBackground;

  late Color surface;
  late Color onSurface;

  late Color surfaceVariant;
  late Color onSurfaceVariant;

  late Color outline;

  late Color shadow;

  late Color inverseSurface;
  late Color inverseOnSurface;
  late Color inversePrimary;

  void _generateMaterialPalette(
    ThemeBrigthness themeBrigthness,
    Color primaryKey,
  ) {
    final scheme = themeBrigthness == ThemeBrigthness.light
        ? Scheme.light(primaryKey.value)
        : Scheme.dark(primaryKey.value);

    primary = Color(scheme.primary);
    onPrimary = Color(scheme.onPrimary);
    primaryContainer = Color(scheme.primaryContainer);
    onPrimaryContainer = Color(scheme.onPrimaryContainer);

    secondary = Color(scheme.secondary);
    onSecondary = Color(scheme.onSecondary);
    secondaryContainer = Color(scheme.secondaryContainer);
    onSecondaryContainer = Color(scheme.onSecondaryContainer);

    tertiary = Color(scheme.tertiary);
    onTertiary = Color(scheme.onTertiary);
    tertiaryContainer = Color(scheme.tertiaryContainer);
    onTertiaryContainer = Color(scheme.onTertiaryContainer);

    error = Color(scheme.error);
    onError = Color(scheme.onError);
    errorContainer = Color(scheme.errorContainer);
    onErrorContainer = Color(scheme.onErrorContainer);

    background = Color(scheme.background);
    onBackground = Color(scheme.onBackground);

    surface = Color(scheme.surface);
    onSurface = Color(scheme.onSurface);

    surfaceVariant = Color(scheme.surfaceVariant);
    onSurfaceVariant = Color(scheme.onSurfaceVariant);

    outline = Color(scheme.outline);

    shadow = Color(scheme.shadow);

    inverseSurface = Color(scheme.inverseSurface);
    inverseOnSurface = Color(scheme.inverseOnSurface);
    inversePrimary = Color(scheme.inversePrimary);
  }
}
