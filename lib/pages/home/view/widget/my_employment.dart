import 'package:flutter/material.dart';
import 'package:personal_portfolio/common/common.dart';
import 'package:personal_portfolio/core/lang/lang.dart';

class MyEmployment extends StatelessWidget {
  const MyEmployment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TimelineItem(
          from: LocaleKeys.timeline_year_redbull_from.tr(),
          to: LocaleKeys.timeline_year_redbull_to.tr(),
          title: LocaleKeys.timeline_title_redbull.tr(),
          subtitle: LocaleKeys.timeline_subtitle_redbull.tr(),
          content: LocaleKeys.timeline_content_redbull.tr(),
          style: TimelineItemStyle.primary,
          chips: [
            LocaleKeys.chip_flutter.tr(),
          ],
        ),
        TimelineItem(
          from: LocaleKeys.timeline_year_young_from.tr(),
          to: LocaleKeys.timeline_year_young_to.tr(),
          title: LocaleKeys.timeline_title_young.tr(),
          subtitle: LocaleKeys.timeline_subtitle_young.tr(),
          content: LocaleKeys.timeline_content_young.tr(),
          style: TimelineItemStyle.primary,
          chips: [
            LocaleKeys.chip_flutter.tr(),
          ],
        ),
        TimelineItem(
          from: LocaleKeys.timeline_year_patchai_from.tr(),
          to: LocaleKeys.timeline_year_patchai_to.tr(),
          title: LocaleKeys.timeline_title_patchai.tr(),
          subtitle: LocaleKeys.timeline_subtitle_patchai.tr(),
          content: LocaleKeys.timeline_content_patchai.tr(),
          style: TimelineItemStyle.primary,
          chips: [
            LocaleKeys.chip_flutter.tr(),
            LocaleKeys.chip_go.tr(),
            LocaleKeys.chip_gRPC.tr(),
            LocaleKeys.chip_graphQL.tr(),
          ],
        ),
        TimelineItem(
          from: LocaleKeys.timeline_year_starty_from.tr(),
          to: LocaleKeys.timeline_year_starty_to.tr(),
          title: LocaleKeys.timeline_title_starty.tr(),
          subtitle: LocaleKeys.timeline_subtitle_starty.tr(),
          content: LocaleKeys.timeline_content_starty.tr(),
          style: TimelineItemStyle.primary,
          chips: [
            LocaleKeys.chip_flutter.tr(),
            LocaleKeys.chip_firebase.tr(),
          ],
        ),
        TimelineItem(
          from: LocaleKeys.timeline_year_mdptech_from.tr(),
          to: LocaleKeys.timeline_year_mdptech_to.tr(),
          title: LocaleKeys.timeline_title_mdptech.tr(),
          subtitle: LocaleKeys.timeline_subtitle_mdptech.tr(),
          content: LocaleKeys.timeline_content_mdptech.tr(),
          style: TimelineItemStyle.primary,
          chips: [
            LocaleKeys.chip_android_java.tr(),
          ],
        ),
      ],
    );
  }
}
