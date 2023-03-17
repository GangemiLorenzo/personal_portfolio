import 'dart:html' as h;

import 'package:flutter/material.dart';
import 'package:personal_portfolio/core/lang/lang.dart';

enum ProjectItemStyle { primary, secondary, tertiary }

class ProjectItem extends StatelessWidget {
  const ProjectItem({
    Key? key,
    required this.title,
    this.codeLink,
    this.liveLink,
    this.chips,
    this.content,
    this.contentWidget,
    this.style = ProjectItemStyle.primary,
  }) : super(key: key);

  final String title;
  final String? codeLink;
  final String? liveLink;
  final String? content;
  final Widget? contentWidget;
  final List<String>? chips;
  final ProjectItemStyle style;

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
                if (chips != null && chips!.isNotEmpty)
                  Wrap(
                    spacing: 8.0,
                    runSpacing: 4.0,
                    children: chips!
                        .map((e) => Chip(
                              label: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    e,
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ],
                              ),
                            ))
                        .toList(),
                  ),
                const SizedBox(
                  height: 4.0,
                ),
                Row(
                  children: [
                    if (liveLink != null)
                      IconButton(
                        onPressed: () => h.window.open(
                          liveLink!,
                          '_blank',
                        ),
                        tooltip: LocaleKeys.live.tr(),
                        icon: Icon(
                          Icons.play_arrow_outlined,
                        ),
                      ),
                    if (codeLink != null)
                      IconButton(
                        onPressed: () => h.window.open(
                          codeLink!,
                          '_blank',
                        ),
                        tooltip: LocaleKeys.source_code.tr(),
                        icon: Icon(
                          Icons.code_outlined,
                        ),
                      ),
                  ],
                ),
                const SizedBox(
                  height: 16.0,
                ),
                if (content != null) ...[
                  Text(
                    content!,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                ],
                if (contentWidget != null) ...[
                  contentWidget!,
                  const SizedBox(
                    height: 16.0,
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color yearColor(BuildContext context) {
    switch (style) {
      case ProjectItemStyle.primary:
        return Theme.of(context).colorScheme.onPrimaryContainer;
      case ProjectItemStyle.secondary:
        return Theme.of(context).colorScheme.onSecondaryContainer;
      case ProjectItemStyle.tertiary:
        return Theme.of(context).colorScheme.onTertiaryContainer;
    }
  }

  Color yearContainerColor(BuildContext context) {
    switch (style) {
      case ProjectItemStyle.primary:
        return Theme.of(context).colorScheme.primaryContainer;
      case ProjectItemStyle.secondary:
        return Theme.of(context).colorScheme.secondaryContainer;
      case ProjectItemStyle.tertiary:
        return Theme.of(context).colorScheme.tertiaryContainer;
    }
  }

  Color titleColor(BuildContext context) {
    switch (style) {
      case ProjectItemStyle.primary:
        return Theme.of(context).colorScheme.primary;
      case ProjectItemStyle.secondary:
        return Theme.of(context).colorScheme.secondary;
      case ProjectItemStyle.tertiary:
        return Theme.of(context).colorScheme.tertiary;
    }
  }
}
