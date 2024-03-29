import 'dart:math';

import 'package:flutter/material.dart';
import 'package:layout/layout.dart';

class TopBar extends StatefulWidget implements PreferredSizeWidget {
  const TopBar({
    Key? key,
    this.actions,
    this.label,
  })  : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  final List<Widget>? actions;
  final String? label;

  @override
  final Size preferredSize;

  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: widget.actions,
      elevation: context.layout.breakpoint > LayoutBreakpoint.sm ? 1 : 0,
      centerTitle: true,
    );
  }
}

class CircleBlurPainter extends CustomPainter {
  const CircleBlurPainter({
    required this.color,
    required this.blurSigma,
  });

  final double blurSigma;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final line = Paint()
      ..color = color
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = min(size.width, size.height)
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, blurSigma);
    final center = Offset(size.width / 2, size.height / 2);
    final radius = min(size.width / 2, size.height / 2);
    canvas.drawCircle(center, radius, line);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
