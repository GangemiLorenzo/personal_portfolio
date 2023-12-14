import 'package:flutter/material.dart';
import 'package:personal_portfolio/common/project_item.dart';
import 'package:personal_portfolio/core/lang/lang.dart';

class MyCSProjects extends StatelessWidget {
  const MyCSProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProjectItem(
          title: LocaleKeys.project_young_platform_exchange_title.tr(),
          content: LocaleKeys.project_young_platform_exchange_content.tr(),
          style: ProjectItemStyle.primary,
          chips: [
            LocaleKeys.chip_flutter.tr(),
            LocaleKeys.chip_security.tr(),
            LocaleKeys.chip_performance.tr(),
          ],
        ),
        ProjectItem(
          title: LocaleKeys.project_myreco_title.tr(),
          content: LocaleKeys.project_myreco_content.tr(),
          style: ProjectItemStyle.primary,
          chips: [
            LocaleKeys.chip_flutter.tr(),
            LocaleKeys.chip_go.tr(),
            LocaleKeys.chip_graphQL.tr(),
            LocaleKeys.chip_gRPC.tr(),
          ],
        ),
        ProjectItem(
          title: LocaleKeys.project_starty_title.tr(),
          content: LocaleKeys.project_starty_content.tr(),
          style: ProjectItemStyle.primary,
          chips: [
            LocaleKeys.chip_flutter.tr(),
            LocaleKeys.chip_firebase.tr(),
          ],
        ),
      ],
    );
  }
}
