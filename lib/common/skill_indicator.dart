import 'package:flutter/material.dart';

class SkillIndicator extends StatefulWidget {
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
        duration: const Duration(milliseconds: 800), vsync: this);
    _animation = IntTween(begin: -10, end: 10).animate(
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
