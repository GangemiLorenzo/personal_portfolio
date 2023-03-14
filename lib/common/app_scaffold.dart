import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:personal_portfolio/common/common.dart';
import 'package:personal_portfolio/core/lang/lang.dart';
import 'package:personal_portfolio/routes/routes.dart';
import 'package:personal_portfolio/theme/theme.dart';
import 'package:provider/provider.dart';
import 'package:routemaster/routemaster.dart';

double mediumWidth = 700;
double largeWidth = 900;

class AppScaffold extends StatefulWidget {
  const AppScaffold({
    Key? key,
  }) : super(key: key);

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  late ThemeRepo themeRepo;

  @override
  void initState() {
    themeRepo = context.read<ThemeRepo>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final pageIndex = TabPage.of(context).controller.index;

    if (isSmall(context)) {
      return Scaffold(
        body: SafeArea(
          child: Center(
            child: PageStackNavigator(
              key: ValueKey(pageIndex),
              stack: TabPage.of(context).stacks[pageIndex],
            ),
          ),
        ),
        bottomNavigationBar: NavigationBottomBar(
          selectedIndex: pageIndex,
          onIndexSelect: _onIndexSelect,
        ),
      );
    } else {
      return Scaffold(
        body: Center(
          child: SizedBox(
            width: isMedium(context) ? mediumWidth : largeWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NavigationSideBar(
                  selectedIndex: pageIndex,
                  onIndexSelect: _onIndexSelect,
                ),
                Expanded(
                  child: SafeArea(
                    child: Center(
                      child: PageStackNavigator(
                        key: ValueKey(pageIndex),
                        stack: TabPage.of(context).stacks[pageIndex],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }

  Future<void> _onIndexSelect(newIndex) async {
    switch (newIndex) {
      case 0:
        RouteApp.routemaster.push(HOME);
        break;
      case 1:
        themeRepo.switchTheme();
        break;
      case 2:
        html.window.open(
          'https://drive.google.com/file/d/1ce_EiDScFTePBWgqGVQm4lHEn-JTc15q/view?usp=sharing',
          '_blank',
        );
        break;
    }
  }
}

class NavigationBottomBar extends StatelessWidget {
  const NavigationBottomBar({
    required this.selectedIndex,
    required this.onIndexSelect,
    Key? key,
  }) : super(key: key);

  final Function(int) onIndexSelect;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: onIndexSelect,
      destinations: [
        NavigationDestination(
          icon: const Icon(Icons.person_outline),
          selectedIcon: const Icon(Icons.person),
          label: LocaleKeys.home.tr(),
        ),
        NavigationDestination(
          icon: const Icon(
            Icons.light_mode,
          ),
          label: LocaleKeys.brightness.tr(),
        ),
        NavigationDestination(
          icon: const Icon(
            Icons.file_download,
          ),
          label: LocaleKeys.resume.tr(),
        ),
      ],
    );
  }
}

class NavigationSideBar extends StatelessWidget {
  const NavigationSideBar({
    required this.selectedIndex,
    required this.onIndexSelect,
    Key? key,
  }) : super(key: key);

  final Function(int) onIndexSelect;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: selectedIndex,
      onDestinationSelected: onIndexSelect,
      labelType: NavigationRailLabelType.all,
      leading: Padding(
        padding: const EdgeInsets.only(top: 128.0),
        child: FloatingActionButton(
          elevation: 0,
          onPressed: () => onIndexSelect.call(2),
          child: Icon(Icons.file_download),
        ),
      ),
      groupAlignment: 0.0,
      destinations: [
        NavigationRailDestination(
          icon: const Icon(Icons.person_outline),
          selectedIcon: Container(
            height: 32,
            width: 64,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondaryContainer,
                borderRadius: const BorderRadius.all(Radius.circular(16.0))),
            child: const Icon(
              Icons.person,
            ),
          ),
          label: Text(LocaleKeys.home.tr()),
        ),
        NavigationRailDestination(
          icon: Icon(
            context.read<ThemeRepo>().themeMode == ThemeMode.dark
                ? Icons.light_mode
                : Icons.dark_mode,
          ),
          selectedIcon: Container(
            height: 32,
            width: 64,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondaryContainer,
                borderRadius: const BorderRadius.all(Radius.circular(16.0))),
            child: Icon(
              context.read<ThemeRepo>().themeMode == ThemeMode.dark
                  ? Icons.light_mode
                  : Icons.dark_mode,
            ),
          ),
          label: Text(LocaleKeys.brightness.tr()),
        ),
      ],
    );
  }
}
