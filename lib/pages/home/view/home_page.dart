import 'package:flutter/material.dart';
import 'package:personal_portfolio/common/common.dart';
import 'package:personal_portfolio/core/lang/lang.dart';
import 'package:personal_portfolio/pages/home/view/widget/my_avatar.dart';
import 'package:personal_portfolio/pages/home/view/widget/my_skills.dart';
import 'package:personal_portfolio/pages/home/view/widget/section.dart';
import 'package:personal_portfolio/theme/theme.dart';

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
                              strokeColor: Theme.of(context).myPalette.primary,
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
                                style: Theme.of(context).myTypography.headline2,
                              ),
                              Text(
                                LocaleKeys.description.tr(),
                                style: Theme.of(context).myTypography.subtitle1,
                              ),
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
                          style: Theme.of(context).myTypography.headline2,
                        ),
                        Text(
                          LocaleKeys.description.tr(),
                          textAlign: TextAlign.center,
                          style: Theme.of(context).myTypography.subtitle1,
                        ),
                      ],
                    ),
              Section(
                color: Theme.of(context).myPalette.primary,
                title: LocaleKeys.bio.tr(),
                content: LocaleKeys.bio_text.tr(),
              ),
              Section(
                color: Theme.of(context).myPalette.primary,
                title: LocaleKeys.tech.tr(),
                content: LocaleKeys.tech_text.tr(),
                child: const MySkills(),
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
