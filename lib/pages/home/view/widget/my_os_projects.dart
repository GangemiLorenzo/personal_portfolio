import 'package:aura_box/aura_box.dart';
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
          title: LocaleKeys.project_aura_box_title.tr(),
          content: LocaleKeys.project_aura_box_content.tr(),
          codeLink: 'https://github.com/GangemiLorenzo/aura_box',
          pubdevLink: 'https://pub.dev/packages/aura_box',
          style: ProjectItemStyle.tertiary,
          chips: [
            LocaleKeys.chip_flutter.tr(),
            LocaleKeys.chip_shaders.tr(),
          ],
          contentWidget: AuraBox(
            decoration: const BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            spots: [
              AuraSpot(
                color: Colors.purple.shade300,
                radius: 500,
                alignment: const Alignment(0, 0.9),
                blurRadius: 50,
              ),
              AuraSpot(
                color: Colors.deepPurple.shade100,
                radius: 400,
                alignment: const Alignment(-1.2, 1.2),
                blurRadius: 50,
              ),
              AuraSpot(
                color: Colors.indigo.shade700,
                radius: 400,
                alignment: const Alignment(-0.5, -1.2),
                blurRadius: 50,
              ),
              AuraSpot(
                color: Colors.purpleAccent.shade700,
                radius: 300,
                alignment: const Alignment(1.2, -1.2),
                blurRadius: 100,
              ),
            ],
            child: Container(
              height: 250,
            ),
          ),
        ),
        ProjectItem(
          title: LocaleKeys.project_game_of_life_title.tr(),
          content: LocaleKeys.project_game_of_life_content.tr(),
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
            ),
          ),
          chips: [
            LocaleKeys.chip_flutter.tr(),
          ],
        ),
        ProjectItem(
          title: LocaleKeys.project_flutter_starter_project_title.tr(),
          content: LocaleKeys.project_flutter_starter_project_content.tr(),
          liveLink: 'https://patchaii.github.io/flutter_starter_project/',
          codeLink: 'https://github.com/PatchAii/flutter_starter_project',
          style: ProjectItemStyle.tertiary,
          chips: [
            LocaleKeys.chip_flutter.tr(),
          ],
        ),
        ProjectItem(
          title: LocaleKeys.project_todo_dapp_title.tr(),
          content: LocaleKeys.project_todo_dapp_content.tr(),
          codeLink: 'https://github.com/GangemiLorenzo/Todo-DAPP',
          style: ProjectItemStyle.tertiary,
          chips: [
            LocaleKeys.chip_flutter.tr(),
            LocaleKeys.chip_solidity.tr(),
            LocaleKeys.chip_ganache.tr(),
            LocaleKeys.chip_truffle.tr(),
          ],
        ),
        ProjectItem(
          title: LocaleKeys.project_goak_title.tr(),
          content: LocaleKeys.project_goak_content.tr(),
          codeLink: 'https://github.com/GangemiLorenzo/Goak',
          style: ProjectItemStyle.tertiary,
          chips: [
            LocaleKeys.chip_go.tr(),
          ],
        ),
        ProjectItem(
          title: LocaleKeys.project_telegram_scraper_title.tr(),
          content: LocaleKeys.project_telegram_scraper_content.tr(),
          codeLink: 'https://github.com/GangemiLorenzo/Telegram-scraper',
          style: ProjectItemStyle.tertiary,
          chips: [
            LocaleKeys.chip_python.tr(),
          ],
        ),
        ProjectItem(
          title: LocaleKeys.project_instagram_bot_title.tr(),
          content: LocaleKeys.project_instagram_bot_content.tr(),
          codeLink: 'https://github.com/GangemiLorenzo/instagram-adb-bot',
          style: ProjectItemStyle.tertiary,
          chips: [
            LocaleKeys.chip_python.tr(),
          ],
        ),
      ],
    );
  }
}
