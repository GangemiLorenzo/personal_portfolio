import 'package:flutter/material.dart';

class SkillIndicator extends StatelessWidget {
  const SkillIndicator({
    required this.color,
    required this.backgroundColor,
    required this.progress,
    required this.icon,
    this.iconColor,
    Key? key,
  }) : super(key: key);

  final Color color;
  final Color backgroundColor;
  final int progress;
  final IconData icon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 2,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: progress,
                    child: Container(
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5.0)),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 100 - progress,
                    child: Container(),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 16.0,
          ),
          Icon(
            icon,
            color: iconColor,
          )
        ],
      ),
    );
  }
}
