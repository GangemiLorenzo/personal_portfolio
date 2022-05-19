import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/lang/lang.dart';
import 'package:personal_portfolio/theme/theme.dart';

enum TimelineItemStyle { primary, secondary, tertiary }

class TimelineItem extends StatelessWidget {
  const TimelineItem({
    Key? key,
    required this.from,
    required this.to,
    required this.title,
    required this.subtitle,
    this.content,
    this.style = TimelineItemStyle.primary,
  }) : super(key: key);

  final String from;
  final String to;
  final String title;
  final String subtitle;
  final String? content;
  final TimelineItemStyle style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).myTypography.headline3.copyWith(
                        color: titleColor(context),
                      ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                if (content != null)
                  Text(
                    content!,
                    style: Theme.of(context).myTypography.bodyText1,
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          subtitle,
                          style: Theme.of(context).myTypography.bodyText2,
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "${from.isNotEmpty ? '${LocaleKeys.timeline_from.tr()} $from ${LocaleKeys.timeline_to.tr()} ' : ''}$to",
                          style: Theme.of(context).myTypography.overline,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color yearColor(BuildContext context) {
    switch (style) {
      case TimelineItemStyle.primary:
        return Theme.of(context).myPalette.onPrimaryContainer;
      case TimelineItemStyle.secondary:
        return Theme.of(context).myPalette.onSecondaryContainer;
      case TimelineItemStyle.tertiary:
        return Theme.of(context).myPalette.onTertiaryContainer;
    }
  }

  Color yearContainerColor(BuildContext context) {
    switch (style) {
      case TimelineItemStyle.primary:
        return Theme.of(context).myPalette.primaryContainer;
      case TimelineItemStyle.secondary:
        return Theme.of(context).myPalette.secondaryContainer;
      case TimelineItemStyle.tertiary:
        return Theme.of(context).myPalette.tertiaryContainer;
    }
  }

  Color titleColor(BuildContext context) {
    switch (style) {
      case TimelineItemStyle.primary:
        return Theme.of(context).myPalette.primary;
      case TimelineItemStyle.secondary:
        return Theme.of(context).myPalette.secondary;
      case TimelineItemStyle.tertiary:
        return Theme.of(context).myPalette.tertiary;
    }
  }
}
