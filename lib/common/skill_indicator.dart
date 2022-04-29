import 'package:flutter/material.dart';

class SkillIndicator extends StatefulWidget {
  const SkillIndicator({
    required this.color,
    required this.backgroundColor,
    required this.progress,
    required this.icon,
    this.iconColor,
    this.animationOffset = 20,
    this.animationDuration = const Duration(milliseconds: 800),
    Key? key,
  }) : super(key: key);

  final Color color;
  final Color backgroundColor;
  final int progress;
  final IconData icon;
  final Color? iconColor;
  final int animationOffset;
  final Duration animationDuration;

  @override
  State<SkillIndicator> createState() => _SkillIndicatorState();
}

class _SkillIndicatorState extends State<SkillIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;
  late int _progress;

  @override
  void initState() {
    _animationController = AnimationController(
      duration: widget.animationDuration,
      vsync: this,
    );
    _animation = IntTween(
            begin: -(widget.animationOffset / 2).round(),
            end: (widget.animationOffset / 2).round())
        .animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
    _progress = widget.progress * 10 + _animation.value as int;

    List list = List.generate(500, (i) => i);
    list.shuffle();
    int delay = list[0] + 500;

    Future.delayed(Duration(milliseconds: delay), () {
      _animationController.repeat(reverse: true);
    });
    _animation.addListener(() {
      setState(() {
        _progress = widget.progress * 10 + _animation.value as int;
      });
    });
    super.initState();
  }

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
                color: widget.backgroundColor,
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: _progress,
                    child: Container(
                      decoration: BoxDecoration(
                        color: widget.color,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5.0)),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1000 - _progress,
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
            widget.icon,
            color: widget.iconColor,
          )
        ],
      ),
    );
  }
}
