import 'package:flutter/material.dart';
import 'package:personal_portfolio/common/utils.dart';
import 'package:personal_portfolio/theme/theme_extension.dart';

class Section extends StatelessWidget {
  const Section({
    required this.color,
    required this.title,
    this.content,
    this.actionText,
    this.action,
    this.actionColor,
    this.child,
    Key? key,
  }) : super(key: key);

  final Color color;
  final String title;
  final String? content;
  final String? actionText;
  final Function? action;
  final Color? actionColor;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isSmall(context)
          ? const EdgeInsets.symmetric(horizontal: 8.0)
          : EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 64,
          ),
          Text(
            title,
            style: Theme.of(context).myTypography.headline4.copyWith(
                  color: color,
                ),
          ),
          const Divider(),
          if (content != null)
            const SizedBox(
              height: 8,
            ),
          if (content != null)
            Text(
              content!,
              style: Theme.of(context).myTypography.bodyText1,
            ),
          if (action != null || child != null)
            const SizedBox(
              height: 32,
            ),
          if (action != null)
            Row(
              children: [
                Expanded(
                  child: TextButton.icon(
                    style: Theme.of(context).textButtonTheme.style!.copyWith(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            actionColor!,
                          ),
                        ),
                    label: Text(
                      actionText!,
                      style: Theme.of(context).myTypography.button.copyWith(
                            color: color,
                          ),
                    ),
                    icon: Icon(
                      Icons.chevron_right,
                      color: color,
                    ),
                    onPressed: () {
                      action!();
                    },
                  ),
                ),
              ],
            ),
          child ?? Container(),
        ],
      ),
    );
  }
}
