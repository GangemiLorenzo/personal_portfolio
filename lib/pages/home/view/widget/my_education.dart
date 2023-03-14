import 'package:flutter/material.dart';
import 'package:personal_portfolio/common/common.dart';
import 'package:personal_portfolio/core/lang/lang.dart';

class MyEducation extends StatelessWidget {
  const MyEducation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TimelineItem(
          from: LocaleKeys.timeline_year_master_from.tr(),
          to: LocaleKeys.timeline_year_master_to.tr(),
          title: LocaleKeys.timeline_title_master.tr(),
          subtitle: LocaleKeys.timeline_subtitle_master.tr(),
          style: TimelineItemStyle.secondary,
          chips: [
            LocaleKeys.chip_scrum.tr(),
            LocaleKeys.chip_distributed_systems.tr(),
            LocaleKeys.chip_networks.tr(),
            LocaleKeys.chip_security.tr(),
            LocaleKeys.chip_kotlin.tr(),
            LocaleKeys.chip_rust.tr(),
            LocaleKeys.chip_react.tr(),
            LocaleKeys.chip_nodejs.tr(),
          ],
        ),
        TimelineItem(
          from: LocaleKeys.timeline_year_polito_from.tr(),
          to: LocaleKeys.timeline_year_polito_to.tr(),
          title: LocaleKeys.timeline_title_polito.tr(),
          subtitle: LocaleKeys.timeline_subtitle_polito.tr(),
          style: TimelineItemStyle.secondary,
          chips: [
            LocaleKeys.chip_algorithms.tr(),
            LocaleKeys.chip_oop.tr(),
            LocaleKeys.chip_java.tr(),
            LocaleKeys.chip_cplspls.tr(),
            LocaleKeys.chip_python.tr(),
          ],
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
