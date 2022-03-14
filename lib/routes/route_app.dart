import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:personal_portfolio/common/common.dart';
import 'package:personal_portfolio/core/lang/lang.dart';
import 'package:personal_portfolio/pages/pages.dart';
import 'package:routemaster/routemaster.dart';

class RouteApp {
  static final routes = RouteMap(
    onUnknownRoute: (route) {
      return MaterialPage(
        name: LocaleKeys.not_found.tr(),
        child: NotFoundPage(
          route: route,
        ),
      );
    },
    routes: {
      '/': (_) => TabPage(
            pageBuilder: (child) => MaterialPage(child: child),
            backBehavior:
                kIsWeb ? TabBackBehavior.history : TabBackBehavior.none,
            child: const AppScaffold(),
            paths: tabRoutes,
          ),
      HOME: (_) => const MaterialPage(
            name: LocaleKeys.home,
            child: HomePage(),
          ),
    },
  );

  static const routeInformationParser = RoutemasterParser();
  static final routemaster = RoutemasterDelegate(
    observers: [
      RouteAppTitleObserver(),
    ],
    routesBuilder: (context) => routes,
  );

  static const tabRoutes = [
    HOME,
  ];

  static void initRoutes() {
    Routemaster.setPathUrlStrategy();
  }
}

class RouteAppTitleObserver extends RoutemasterObserver {
  @override
  void didChangeRoute(RouteData routeData, Page page) {
    if (page.name != null) {
      SystemChrome.setApplicationSwitcherDescription(
        ApplicationSwitcherDescription(
          label: page.name,
          primaryColor: 0x00000000,
        ),
      );
    }
  }
}

class PageTMP extends StatelessWidget {
  PageTMP({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(title),
      ],
    );
  }
}
