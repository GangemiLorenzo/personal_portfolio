import 'package:flutter/material.dart';
import 'package:game_of_life/game_of_life.dart';
import 'package:personal_portfolio/common/project_item.dart';
import 'package:personal_portfolio/core/lang/lang.dart';

class MyOSProjects extends StatelessWidget {
  const MyOSProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProjectItem(
          title: 'Game of life',
          content:
              'This project is an implementation of the famous Conway\'s game.',
          liveLink: 'https://gangemilorenzo.github.io/Game-Of-Life',
          codeLink: 'https://github.com/GangemiLorenzo/Game-Of-Life',
          style: ProjectItemStyle.tertiary,
          contentWidget: Container(
              height: 300,
              child: GameOfLife(
                cellSize: 20,
                cellsColor: Theme.of(context).colorScheme.tertiary,
                gridColor: Theme.of(context).colorScheme.tertiaryContainer,
                hideControls: true,
                backgroundColor: Colors.transparent,
                milliseconds: 300,
              )),
          chips: [
            LocaleKeys.chip_flutter.tr(),
          ],
        ),
        ProjectItem(
          title: 'PatchAii: Flutter Starter Project',
          content:
              'Starter template me and my collegues from AliraHealth have contributed before starting the company project.\nContains state management, auto generate feature’s template, routing, basic translations, basic notifications.',
          liveLink: 'https://patchaii.github.io/flutter_starter_project/',
          codeLink: 'https://github.com/PatchAii/flutter_starter_project',
          style: ProjectItemStyle.tertiary,
          chips: [
            LocaleKeys.chip_flutter.tr(),
          ],
        ),
        ProjectItem(
          title: 'Todo DAPP',
          content:
              'This project is a basic mobile Todo App build with Flutter.\nThe backend consist in a Solidity contract running on the Ethereum Blockchain.',
          codeLink: 'https://github.com/GangemiLorenzo/Todo-DAPP',
          style: ProjectItemStyle.tertiary,
          contentWidget: Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://raw.githubusercontent.com/GangemiLorenzo/Todo-DAPP/main/readme_cover.png',
                    scale: 0.5),
              ),
            ),
          ),
          chips: [
            LocaleKeys.chip_flutter.tr(),
            'Solidity',
            'Ganache',
            'Truffle'
          ],
        ),
        ProjectItem(
          title: 'Goak',
          content:
              'Go module to build a decisional tree from a Json file and run a search through it.',
          codeLink: 'https://github.com/GangemiLorenzo/Goak',
          style: ProjectItemStyle.tertiary,
          chips: [
            LocaleKeys.chip_go.tr(),
          ],
        ),
        ProjectItem(
          title: 'Telegram Scraper',
          content:
              'Python script to scrape telegram users from a group and move them to another.',
          codeLink: 'https://github.com/GangemiLorenzo/Telegram-scraper',
          style: ProjectItemStyle.tertiary,
          chips: [
            'Python',
          ],
        ),
        ProjectItem(
          title: 'Instagram ADB Bot',
          content:
              'Python script to automate likes inside Instagram android application.',
          codeLink: 'https://github.com/GangemiLorenzo/instagram-adb-bot',
          style: ProjectItemStyle.tertiary,
          chips: [
            'Python',
          ],
        ),
      ],
    );
  }
}
