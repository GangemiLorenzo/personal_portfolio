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
          year: LocaleKeys.timeline_year_patchai.tr(),
          title: LocaleKeys.timeline_title_patchai.tr(),
          subtitle: LocaleKeys.timeline_subtitle_patchai.tr(),
          content: LocaleKeys.timeline_content_patchai.tr(),
          style: TimelineItemStyle.primary,
        ),
        TimelineItem(
          year: LocaleKeys.timeline_year_starty.tr(),
          title: LocaleKeys.timeline_title_starty.tr(),
          subtitle: LocaleKeys.timeline_subtitle_starty.tr(),
          content: LocaleKeys.timeline_content_starty.tr(),
          style: TimelineItemStyle.primary,
        ),
        TimelineItem(
          year: LocaleKeys.timeline_year_polito.tr(),
          title: LocaleKeys.timeline_title_polito.tr(),
          subtitle: LocaleKeys.timeline_subtitle_polito.tr(),
          style: TimelineItemStyle.secondary,
        ),
        TimelineItem(
          year: LocaleKeys.timeline_year_mdptech.tr(),
          title: LocaleKeys.timeline_title_mdptech.tr(),
          subtitle: LocaleKeys.timeline_subtitle_mdptech.tr(),
          content: LocaleKeys.timeline_content_mdptech.tr(),
          style: TimelineItemStyle.primary,
        ),
        TimelineItem(
          year: LocaleKeys.timeline_year_vallauri.tr(),
          title: LocaleKeys.timeline_title_vallauri.tr(),
          subtitle: LocaleKeys.timeline_subtitle_vallauri.tr(),
          style: TimelineItemStyle.secondary,
        ),
      ],
    );
  }
}
