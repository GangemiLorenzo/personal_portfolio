import 'package:flutter/material.dart';
import 'package:personal_portfolio/common/common.dart';
import 'package:personal_portfolio/core/lang/lang.dart';

class MyTimeline extends StatelessWidget {
  const MyTimeline({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TimelineItem(
          from: LocaleKeys.timeline_year_patchai_from.tr(),
          to: LocaleKeys.timeline_year_patchai_to.tr(),
          title: LocaleKeys.timeline_title_patchai.tr(),
          subtitle: LocaleKeys.timeline_subtitle_patchai.tr(),
          content: LocaleKeys.timeline_content_patchai.tr(),
          style: TimelineItemStyle.primary,
        ),
        TimelineItem(
          from: LocaleKeys.timeline_year_master_from.tr(),
          to: LocaleKeys.timeline_year_master_to.tr(),
          title: LocaleKeys.timeline_title_master.tr(),
          subtitle: LocaleKeys.timeline_subtitle_master.tr(),
          style: TimelineItemStyle.secondary,
        ),
        TimelineItem(
          from: LocaleKeys.timeline_year_starty_from.tr(),
          to: LocaleKeys.timeline_year_starty_to.tr(),
          title: LocaleKeys.timeline_title_starty.tr(),
          subtitle: LocaleKeys.timeline_subtitle_starty.tr(),
          content: LocaleKeys.timeline_content_starty.tr(),
          style: TimelineItemStyle.primary,
        ),
        TimelineItem(
          from: LocaleKeys.timeline_year_polito_from.tr(),
          to: LocaleKeys.timeline_year_polito_to.tr(),
          title: LocaleKeys.timeline_title_polito.tr(),
          subtitle: LocaleKeys.timeline_subtitle_polito.tr(),
          style: TimelineItemStyle.secondary,
        ),
        TimelineItem(
          from: LocaleKeys.timeline_year_mdptech_from.tr(),
          to: LocaleKeys.timeline_year_mdptech_to.tr(),
          title: LocaleKeys.timeline_title_mdptech.tr(),
          subtitle: LocaleKeys.timeline_subtitle_mdptech.tr(),
          content: LocaleKeys.timeline_content_mdptech.tr(),
          style: TimelineItemStyle.primary,
        ),
        TimelineItem(
          from: LocaleKeys.timeline_year_vallauri_from.tr(),
          to: LocaleKeys.timeline_year_vallauri_to.tr(),
          title: LocaleKeys.timeline_title_vallauri.tr(),
          subtitle: LocaleKeys.timeline_subtitle_vallauri.tr(),
          style: TimelineItemStyle.secondary,
        ),
      ],
    );
  }
}
