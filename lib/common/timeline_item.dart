import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/lang/lang.dart';

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
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: titleColor(context),
                      ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                if (content != null)
                  Text(
                    content!,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          subtitle,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "${from.isNotEmpty ? '${LocaleKeys.timeline_from.tr()} $from ${LocaleKeys.timeline_to.tr()} ' : ''}$to",
                          style: Theme.of(context).textTheme.labelSmall,
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
        return Theme.of(context).colorScheme.onPrimaryContainer;
      case TimelineItemStyle.secondary:
        return Theme.of(context).colorScheme.onSecondaryContainer;
      case TimelineItemStyle.tertiary:
        return Theme.of(context).colorScheme.onTertiaryContainer;
    }
  }

  Color yearContainerColor(BuildContext context) {
    switch (style) {
      case TimelineItemStyle.primary:
        return Theme.of(context).colorScheme.primaryContainer;
      case TimelineItemStyle.secondary:
        return Theme.of(context).colorScheme.secondaryContainer;
      case TimelineItemStyle.tertiary:
        return Theme.of(context).colorScheme.tertiaryContainer;
    }
  }

  Color titleColor(BuildContext context) {
    switch (style) {
      case TimelineItemStyle.primary:
        return Theme.of(context).colorScheme.primary;
      case TimelineItemStyle.secondary:
        return Theme.of(context).colorScheme.secondary;
      case TimelineItemStyle.tertiary:
        return Theme.of(context).colorScheme.tertiary;
    }
  }
}
