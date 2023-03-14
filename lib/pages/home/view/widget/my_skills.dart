import 'package:flutter/material.dart';
import 'package:personal_portfolio/common/common.dart';
import 'package:personal_portfolio/theme/theme.dart';
import 'package:provider/provider.dart';

class MySkills extends StatelessWidget {
  const MySkills({
    this.animated = true,
    Key? key,
  }) : super(key: key);

  final bool animated;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SkillIndicator(
          color: Theme.of(context).colorScheme.onPrimaryContainer,
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          progress: 90,
          icon: context.watch<ThemeRepo>().myIcons.flutter_original,
          iconColor: Theme.of(context).colorScheme.primary,
          animated: animated,
        ),
        SkillIndicator(
          color: Theme.of(context).colorScheme.onPrimaryContainer,
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          progress: 80,
          icon: context.watch<ThemeRepo>().myIcons.go_original,
          iconColor: Theme.of(context).colorScheme.primary,
          animated: animated,
        ),
      ],
    );
  }
}
