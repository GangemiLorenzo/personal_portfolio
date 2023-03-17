import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:personal_portfolio/common/common.dart';
import 'package:personal_portfolio/core/lang/lang.dart';
import 'package:personal_portfolio/pages/home/view/widget/my_avatar.dart';
import 'package:personal_portfolio/pages/home/view/widget/my_skills.dart';
import 'package:personal_portfolio/pages/home/view/widget/section.dart';
import 'package:personal_portfolio/theme/theme.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(
        scrollbars: false,
      ),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: isSmall(context) ? 16.0 : 80.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              !isSmall(context)
                  ? Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 360,
                            child: StrokeGridPattern(
                              paddingHorizontal: 16,
                              paddingVertical: 64,
                              actionRange: 200,
                              strokeWidth: 1,
                              strokeColor:
                                  Theme.of(context).colorScheme.primary,
                              strokeLength: 12.0,
                            ),
                          ),
                        ),
                      ],
                    )
                  : Container(),
              const SizedBox(
                height: 32,
              ),
              !isSmall(context)
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                LocaleKeys.hey.tr(),
                                style:
                                    Theme.of(context).textTheme.displayMedium,
                              ),
                              Text(
                                LocaleKeys.description.tr(),
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () => html.window.open(
                                      'https://twitter.com/LorenzoGangemi_',
                                      '_blank',
                                    ),
                                    icon: Icon(
                                      context
                                          .watch<ThemeRepo>()
                                          .myIcons
                                          .twitter,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () => html.window.open(
                                      'https://github.com/GangemiLorenzo',
                                      '_blank',
                                    ),
                                    icon: Icon(
                                      context.watch<ThemeRepo>().myIcons.github,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () => html.window.open(
                                      'https://stackoverflow.com/users/6769331/l-gangemi',
                                      '_blank',
                                    ),
                                    icon: Icon(
                                      context
                                          .watch<ThemeRepo>()
                                          .myIcons
                                          .stack_overflow,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () => html.window.open(
                                      'https://linkedin.com/in/lorenzo-gangemi',
                                      '_blank',
                                    ),
                                    icon: Icon(
                                      context
                                          .watch<ThemeRepo>()
                                          .myIcons
                                          .linkedin_in,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        const MyAvatar(),
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const MyAvatar(),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Text(
                          LocaleKeys.hey.tr(),
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        Text(
                          LocaleKeys.description.tr(),
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () => html.window.open(
                                'https://twitter.com/LorenzoGangemi_',
                                '_blank',
                              ),
                              icon: Icon(
                                context.watch<ThemeRepo>().myIcons.twitter,
                              ),
                            ),
                            IconButton(
                              onPressed: () => html.window.open(
                                'https://github.com/GangemiLorenzo',
                                '_blank',
                              ),
                              icon: Icon(
                                context.watch<ThemeRepo>().myIcons.github,
                              ),
                            ),
                            IconButton(
                              onPressed: () => html.window.open(
                                'https://stackoverflow.com/users/6769331/l-gangemi',
                                '_blank',
                              ),
                              icon: Icon(
                                context
                                    .watch<ThemeRepo>()
                                    .myIcons
                                    .stack_overflow,
                              ),
                            ),
                            IconButton(
                              onPressed: () => html.window.open(
                                'https://linkedin.com/in/lorenzo-gangemi',
                                '_blank',
                              ),
                              icon: Icon(
                                context.watch<ThemeRepo>().myIcons.linkedin_in,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
              Section(
                color: Theme.of(context).colorScheme.primary,
                title: LocaleKeys.bio.tr(),
                content: LocaleKeys.bio_text.tr(),
              ),
              Section(
                color: Theme.of(context).colorScheme.primary,
                title: LocaleKeys.tech.tr(),
                content: LocaleKeys.tech_text.tr(),
                child: MySkills(),
              ),

              // Section(
              //   color: Theme.of(context).colorScheme.primary,
              //   title: 'Projects',
              //   child: const MyProjects(),
              // ),

              const SizedBox(
                height: 64,
              ),

              // Container(
              //   height: 600,
              //   width: 200,
              //   child: GameOfLife(
              //     milliseconds: 200,
              //     cellSize: 20,
              //     hideControls: true,
              //     cellsColor: Theme.of(context).colorScheme.primary,
              //     backgroundColor: Theme.of(context).colorScheme.background,
              //     gridColor:
              //         Theme.of(context).colorScheme.onBackground.withAlpha(100),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
