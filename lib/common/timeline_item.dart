import 'package:flutter/material.dart';
import 'package:personal_portfolio/common/common.dart';
import 'package:personal_portfolio/theme/theme.dart';

enum TimelineItemStyle { primary, secondary, tertiary }

class TimelineItem extends StatelessWidget {
  const TimelineItem({
    Key? key,
    required this.year,
    required this.title,
    required this.subtitle,
    this.content,
    this.style = TimelineItemStyle.primary,
  }) : super(key: key);

  final String year;
  final String title;
  final String subtitle;
  final String? content;
  final TimelineItemStyle style;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            flex: isSmall(context) ? 5 : 4,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(24.0),
                  ),
                  color: yearContainerColor(context),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(isSmall(context) ? 8.0 : 16.0),
                      child: Text(
                        year,
                        style: isSmall(context)
                            ? Theme.of(context).myTypography.headline5.copyWith(
                                  color: yearColor(context),
                                )
                            : Theme.of(context).myTypography.headline4.copyWith(
                                  color: yearColor(context),
                                ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
          Expanded(
            flex: 12,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
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
                  Text(
                    subtitle,
                    style: Theme.of(context).myTypography.bodyText2,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  if (content != null)
                    Text(
                      content!,
                      style: Theme.of(context).myTypography.bodyText1,
                    ),
                ],
              ),
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
