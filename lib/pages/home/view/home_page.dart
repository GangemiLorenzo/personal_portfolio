import 'package:flutter/material.dart';
import 'package:personal_portfolio/common/card_container.dart';
import 'package:personal_portfolio/common/stroke_grid_pattern.dart';
import 'package:personal_portfolio/common/utils.dart';
import 'package:personal_portfolio/lang/lang.dart';
import 'package:personal_portfolio/pages/home/view/widget/section.dart';
import 'package:personal_portfolio/theme/theme_extension.dart';

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
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: isSmall(context) ? 16.0 : 80.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 360,
                      child: StrokeGridPattern(
                        paddingHorizontal: 16,
                        paddingVertical: 64,
                        actionRange: 200,
                        strokeWidth: 1,
                        strokeColor: Theme.of(context).myPalette.primary,
                        strokeLength: 12.0,
                      ),
                    ),
                  ),
                ],
              ),
              CardM3Filled(
                style: CardStyle.primary,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      LocaleKeys.mobile_web_dev.tr(),
                      style: Theme.of(context).myTypography.subtitle1.copyWith(
                            color:
                                Theme.of(context).myPalette.onPrimaryContainer,
                          ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 64,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        LocaleKeys.hey.tr(),
                        style: Theme.of(context).myTypography.headline2,
                      ),
                      Text(
                        LocaleKeys.description.tr(),
                        style: Theme.of(context).myTypography.subtitle1,
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: isMedium(context) ? 32 : 48,
                    backgroundColor: Theme.of(context).myPalette.onSurface,
                    child: CircleAvatar(
                      radius: isMedium(context) ? 28 : 44,
                      backgroundColor: Theme.of(context).myPalette.onSurface,
                      backgroundImage:
                          const AssetImage('assets/profile/profile.jpeg'),
                    ),
                  )
                ],
              ),
              Section(
                color: Theme.of(context).myPalette.primary,
                title: LocaleKeys.bio.tr(),
                content: LocaleKeys.bio_text.tr(),
              ),
              Section(
                color: Theme.of(context).myPalette.tertiary,
                title: LocaleKeys.tech.tr(),
                content: LocaleKeys.tech_text.tr(),
                action: () => {},
                actionColor: Theme.of(context).myPalette.tertiaryContainer,
                actionText: LocaleKeys.go.tr(),
              ),
              Section(
                color: Theme.of(context).myPalette.secondary,
                title: 'Work',
                content: LocaleKeys.bio_text.tr(),
              ),
              const SizedBox(
                height: 64,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
