import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:personal_portfolio/common/common.dart';
import 'package:personal_portfolio/pages/pages.dart';
import 'package:personal_portfolio/route/route_pages.dart';
import 'package:routemaster/routemaster.dart';

class RouteApp {
  static final routes = RouteMap(
    onUnknownRoute: (route) {
      return SwipableBackPage(
        name: 'Not Found',
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
      '/page1': (_) => MaterialPage(
            name: 'Page1',
            child: PageTMP(
              title: 'Page1',
            ),
          ),
      '/page2': (_) => MaterialPage(
            name: 'Page2',
            child: PageTMP(
              title: 'Page2',
            ),
          ),
      '/page3': (_) => MaterialPage(
            name: 'Page2',
            child: PageTMP(
              title: 'Page3',
            ),
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
    '/page1',
    '/page2',
    '/page3',
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
