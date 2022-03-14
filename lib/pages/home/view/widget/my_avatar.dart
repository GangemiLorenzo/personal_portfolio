import 'package:flutter/material.dart';
import 'package:personal_portfolio/common/common.dart';
import 'package:personal_portfolio/gen/assets.gen.dart';
import 'package:personal_portfolio/theme/theme.dart';

class MyAvatar extends StatelessWidget {
  const MyAvatar({
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
