import 'package:flutter/material.dart';
import 'package:personal_portfolio/common/common.dart';
import 'package:personal_portfolio/gen/assets.gen.dart';
import 'package:personal_portfolio/lang/lang.dart';
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
                        const _MyAvatar(),
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const _MyAvatar(),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    SkillIndicator(
                      color: Color.fromARGB(255, 81, 192, 240),
                      backgroundColor: Color.fromARGB(70, 81, 192, 240),
                      progress: 90,
                      icon: MyIcons.flutter_original,
                      iconColor: Color.fromARGB(255, 81, 192, 240),
                    ),
                    SkillIndicator(
                      color: Color.fromARGB(255, 63, 185, 132),
                      backgroundColor: Color.fromARGB(70, 63, 185, 132),
                      progress: 60,
                      icon: MyIcons.vuejs_original,
                      iconColor: Color.fromARGB(255, 63, 185, 132),
                    ),
                    SkillIndicator(
                      color: Color.fromARGB(255, 0, 167, 209),
                      backgroundColor: Color.fromARGB(70, 0, 167, 209),
                      progress: 50,
                      icon: MyIcons.go_original,
                      iconColor: Color.fromARGB(255, 0, 167, 209),
                    ),
                    SkillIndicator(
                      color: Color.fromARGB(255, 255, 202, 44),
                      backgroundColor: Color.fromARGB(70, 255, 202, 44),
                      progress: 80,
                      icon: MyIcons.firebase_plain,
                      iconColor: Color.fromARGB(255, 255, 202, 44),
                    ),
                  ],
                ),
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

class _MyAvatar extends StatelessWidget {
  const _MyAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: isMedium(context) ? 32 : 48,
      backgroundColor: Theme.of(context).myPalette.onSurface,
      child: CircleAvatar(
        radius: isMedium(context) ? 28 : 44,
        backgroundColor: Theme.of(context).myPalette.onSurface,
        backgroundImage: AssetImage(Assets.profile.profile.path),
      ),
    );
  }
}
