import 'package:flutter/material.dart';

class GenericDialog extends StatelessWidget {
  const GenericDialog({
    required this.title,
    Key? key,
    this.subtitle,
    this.description,
    this.actions,
  }) : super(key: key);

  final List<Widget>? actions;
  final String? description;
  final String? subtitle;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        //TODO: Theme.of(context).palette.background
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
        type: MaterialType.card,
        child: SizedBox(
          width: 300.0,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  if (subtitle != null)
                    Row(
                      children: [
                        Text(
                          subtitle!,
                          style: const TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  if (description != null)
                    Text(
                      description!,
                      style: const TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  if (actions != null)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ...actions!,
                      ],
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
