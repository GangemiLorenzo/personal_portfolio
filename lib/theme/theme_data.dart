// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/theme/theme_extension.dart';

ThemeData getLightTheme({
  required Color primaryKey,
}) {
  final theme = ThemeData(
    brightness: Brightness.light,
  )..init(
      primaryKey: primaryKey,
    );

  IconThemeData? _getIconThemeState(Set<MaterialState> states) {
    if (states.contains(MaterialState.selected)) {
      return IconThemeData(color: theme.myPalette.onSecondaryContainer);
    }
    return null;
  }

  TextStyle? _getTextStyleState(Set<MaterialState> states) {
    if (states.contains(MaterialState.selected)) {
      return TextStyle(color: theme.myPalette.onSecondaryContainer);
    }
    return null;
  }

  return theme.copyWith(
    textTheme: GoogleFonts.robotoTextTheme(
      ThemeData(
        brightness: Brightness.light,
      ).textTheme,
    ),
    visualDensity: VisualDensity.standard,
    primaryColor: theme.myPalette.primary,
    primaryColorLight: theme.myPalette.primaryContainer,
    primaryColorDark: theme.myPalette.onPrimaryContainer,
    colorScheme: ColorScheme.light(
      primary: theme.myPalette.primary,
      secondary: theme.myPalette.secondary,
    ),
    backgroundColor: theme.myPalette.surface,
    canvasColor: theme.myPalette.surface,
    scaffoldBackgroundColor: theme.myPalette.surface,
    hoverColor: Colors.transparent,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: theme.myPalette.surface,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      iconTheme: IconThemeData(
        color: theme.myPalette.onPrimaryContainer,
      ),
      titleTextStyle: TextStyle(
        color: theme.myPalette.onPrimaryContainer,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          theme.myPalette.onPrimaryContainer,
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          theme.myPalette.primary,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(
          theme.myPalette.onPrimaryContainer,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(
          theme.myPalette.onPrimaryContainer,
        ),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: theme.myPalette.surface,
      selectedIconTheme: IconThemeData(
        color: theme.myPalette.onSecondaryContainer,
      ),
      unselectedIconTheme: IconThemeData(
        color: theme.myPalette.onSurfaceVariant,
      ),
      unselectedItemColor: theme.myPalette.onSurfaceVariant,
      selectedItemColor: theme.myPalette.onSurface,
      elevation: 0,
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: theme.myPalette.surface,
      indicatorColor: theme.myPalette.secondaryContainer,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      iconTheme: MaterialStateProperty.resolveWith(_getIconThemeState),
    ),
    dividerTheme: DividerThemeData(
      color: theme.myPalette.surfaceVariant,
    ),
    cardColor: theme.myPalette.primaryContainer,
    dividerColor: theme.myPalette.surfaceVariant,
    errorColor: theme.myPalette.error,
    shadowColor: theme.myPalette.shadow,
    navigationRailTheme: NavigationRailThemeData(
      backgroundColor: theme.myPalette.surface,
      selectedIconTheme: IconThemeData(
        color: theme.myPalette.onSecondaryContainer,
      ),
      unselectedIconTheme: IconThemeData(
        color: theme.myPalette.onSurfaceVariant,
      ),
      selectedLabelTextStyle: TextStyle(
        color: theme.myPalette.onSurface,
      ),
      unselectedLabelTextStyle: TextStyle(
        color: theme.myPalette.onSurfaceVariant,
      ),
    ),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
  );
}

ThemeData getDarkTheme({
  required Color primaryKey,
}) {
  final theme = ThemeData(
    brightness: Brightness.dark,
  )..init(
      primaryKey: primaryKey,
    );

  IconThemeData? _getIconThemeState(Set<MaterialState> states) {
    if (states.contains(MaterialState.selected)) {
      return IconThemeData(color: theme.myPalette.onSecondaryContainer);
    }
    return null;
  }

  TextStyle? _getTextStyleState(Set<MaterialState> states) {
    if (states.contains(MaterialState.selected)) {
      return TextStyle(color: theme.myPalette.onSecondaryContainer);
    }
    return null;
  }

  return theme.copyWith(
    textTheme: GoogleFonts.robotoTextTheme(
      ThemeData(
        brightness: Brightness.dark,
      ).textTheme,
    ),
    visualDensity: VisualDensity.standard,
    primaryColor: theme.myPalette.primary,
    primaryColorLight: theme.myPalette.onPrimaryContainer,
    primaryColorDark: theme.myPalette.primaryContainer,
    colorScheme: ColorScheme.dark(
      primary: theme.myPalette.primary,
      secondary: theme.myPalette.secondary,
    ),
    canvasColor: theme.myPalette.surface,
    scaffoldBackgroundColor: theme.myPalette.surface,
    hoverColor: Colors.transparent,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: theme.myPalette.surface,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      iconTheme: IconThemeData(
        color: theme.myPalette.primaryContainer,
      ),
      titleTextStyle: TextStyle(
        color: theme.myPalette.primaryContainer,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          theme.myPalette.primaryContainer,
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          theme.myPalette.onPrimaryContainer,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(
          theme.myPalette.primaryContainer,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(
          theme.myPalette.primaryContainer,
        ),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: theme.myPalette.surface,
      selectedIconTheme: IconThemeData(
        color: theme.myPalette.onSecondaryContainer,
      ),
      unselectedIconTheme: IconThemeData(
        color: theme.myPalette.onSurfaceVariant,
      ),
      unselectedItemColor: theme.myPalette.onSurfaceVariant,
      selectedItemColor: theme.myPalette.onSurface,
      elevation: 0,
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: theme.myPalette.surface,
      indicatorColor: theme.myPalette.secondaryContainer,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      iconTheme: MaterialStateProperty.resolveWith(_getIconThemeState),
    ),
    dividerTheme: DividerThemeData(
      color: theme.myPalette.surfaceVariant,
    ),
    cardColor: theme.myPalette.primaryContainer,
    dividerColor: theme.myPalette.surfaceVariant,
    errorColor: theme.myPalette.error,
    shadowColor: theme.myPalette.shadow,
    navigationRailTheme: NavigationRailThemeData(
      backgroundColor: theme.myPalette.surface,
      selectedIconTheme: IconThemeData(
        color: theme.myPalette.onSecondaryContainer,
      ),
      unselectedIconTheme: IconThemeData(
        color: theme.myPalette.onSurfaceVariant,
      ),
      selectedLabelTextStyle: TextStyle(
        color: theme.myPalette.onSurface,
      ),
      unselectedLabelTextStyle: TextStyle(
        color: theme.myPalette.onSurfaceVariant,
      ),
    ),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
  );
}
