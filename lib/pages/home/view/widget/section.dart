import 'package:flutter/material.dart';
import 'package:personal_portfolio/theme/theme_extension.dart';

class Section extends StatelessWidget {
  const Section({
    required this.color,
    required this.title,
    required this.content,
    this.actionText,
    this.action,
    this.actionColor,
    Key? key,
  }) : super(key: key);

  final Color color;
  final String title;
  final String content;
  final String? actionText;
  final Function? action;
  final Color? actionColor;

  @override
  Widget build(BuildContext context) {
    return Column(
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
        const SizedBox(
          height: 8,
        ),
        Text(
          content,
          style: Theme.of(context).myTypography.bodyText1,
        ),
        if (action != null)
          const SizedBox(
            height: 16,
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
      ],
    );
  }
}
