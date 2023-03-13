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
          color: const Color.fromARGB(255, 81, 192, 240),
          backgroundColor: const Color.fromARGB(70, 81, 192, 240),
          progress: 90,
          icon: context.watch<ThemeRepo>().myIcons.flutter_original,
          iconColor: const Color.fromARGB(255, 81, 192, 240),
          animated: animated,
        ),
        SkillIndicator(
          color: const Color.fromARGB(255, 0, 167, 209),
          backgroundColor: const Color.fromARGB(70, 0, 167, 209),
          progress: 80,
          icon: context.watch<ThemeRepo>().myIcons.go_original,
          iconColor: const Color.fromARGB(255, 0, 167, 209),
          animated: animated,
        ),
        SkillIndicator(
          color: const Color.fromARGB(255, 63, 185, 132),
          backgroundColor: const Color.fromARGB(70, 63, 185, 132),
          progress: 70,
          icon: context.watch<ThemeRepo>().myIcons.vuejs_original,
          iconColor: const Color.fromARGB(255, 63, 185, 132),
          animated: animated,
        ),
      ],
    );
  }
}
