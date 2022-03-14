import 'package:flutter/material.dart';
import 'package:personal_portfolio/common/common.dart';
import 'package:personal_portfolio/theme/theme.dart';

class MySkills extends StatelessWidget {
  const MySkills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
