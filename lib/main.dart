import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:layout/layout.dart';
import 'package:personal_portfolio/core/lang/lang.dart';
import 'package:personal_portfolio/routes/routes.dart';
import 'package:personal_portfolio/theme/theme.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initApp();

  runApp(const App());
}

Future _initApp() async {
  final futures = <Future>[
    EasyLocalization.ensureInitialized(),
  ];
  RouteApp.initRoutes();
  EasyLocalization.logger.enableBuildModes = [];

  await Future.wait(futures);
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent,
        statusBarColor: Colors.transparent,
        systemNavigationBarContrastEnforced: true,
        systemStatusBarContrastEnforced: true,
        statusBarBrightness: Brightness.light,
      ),
    );
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.edgeToEdge,
    );

    return EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('it'),
      ],
      fallbackLocale: const Locale('en', 'US'),
      useOnlyLangCode: true,
      path: 'translations',
      assetLoader: const CodegenLoader(),
      child: const AppProvider(),
    );
  }
}

class AppProvider extends StatelessWidget {
  const AppProvider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeRepo(),
        ),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Layout(
      child: MaterialApp.router(
        title: LocaleKeys.title.tr(),
        routeInformationParser: RouteApp.routeInformationParser,
        restorationScopeId: 'root',
        themeMode: context.watch<ThemeRepo>().themeMode,
        theme: context.watch<ThemeRepo>().lightTheme,
        darkTheme: context.watch<ThemeRepo>().darkTheme,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        routerDelegate: RouteApp.routemaster,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
