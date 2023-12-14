import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.only(top: 64.0),
      child: Padding(
        padding: EdgeInsets.zero,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
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
                style: Theme.of(context).textTheme.bodyMedium,
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
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
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
      ),
    );
  }
}
