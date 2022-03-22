import 'dart:math';

import 'package:flutter/material.dart';

class StrokeGridPattern extends StatefulWidget {
  const StrokeGridPattern({
    this.child,
    this.offset,
    this.actionRange,
    this.strokeLength,
    this.strokeWidth,
    this.strokeColor,
    this.paddingVertical,
    this.paddingHorizontal,
    Key? key,
  }) : super(key: key);

  final Widget? child;
  final double? offset;
  final double? actionRange;
  final double? strokeLength;
  final double? strokeWidth;
  final Color? strokeColor;
  final double? paddingVertical;
  final double? paddingHorizontal;

  @override
  State<StrokeGridPattern> createState() => _StrokeGridPatternState();
}

class _StrokeGridPatternState extends State<StrokeGridPattern> {
  late Offset position;

  @override
  void initState() {
    position = Offset.zero;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        RenderBox box = context.findRenderObject() as RenderBox;
        setState(
          () => {
            position = box.globalToLocal(event.position),
            if (widget.paddingVertical != null ||
                widget.paddingHorizontal != null)
              position = position.translate(
                -(widget.paddingHorizontal ?? 0.0),
                -(widget.paddingVertical ?? 0.0),
              )
          },
        );
      },
      onExit: (event) {
        setState(
          () => {
            position = Offset.zero,
          },
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: widget.paddingHorizontal ?? 0.0,
            vertical: widget.paddingVertical ?? 0.0),
        child: CustomPaint(
          painter: _StrokeGridPainter(
            p: position,
            offset: widget.offset ?? 30,
            actionRange: widget.actionRange ?? 500,
            strokeColor: widget.strokeColor ?? Colors.black,
            strokeWidth: widget.strokeWidth ?? 5,
            strokeLength: widget.strokeLength ?? 8,
          ),
          child: widget.child,
        ),
      ),
    );
  }
}

class _StrokeGridPainter extends CustomPainter {
  const _StrokeGridPainter({
    this.offset = 30,
    this.actionRange = 500,
    this.strokeLength = 8,
    this.strokeWidth = 5,
    this.strokeColor = Colors.black,
    required this.p,
  });

  final Offset p;
  final double offset;
  final double actionRange;
  final double strokeLength;
  final double strokeWidth;
  final Color strokeColor;
  @override
  void paint(Canvas canvas, Size size) {
    final off = offset;
    final l = actionRange;
    final w = strokeLength;
    final horizontal = size.width ~/ off;
    final vertical = size.height ~/ off;
    for (int j in List<int>.generate(vertical, (j) => j + 1)) {
      for (int i in List<int>.generate(horizontal, (i) => i + 1)) {
        final c = Offset((i * off).toDouble(), (j * off).toDouble());
        final a = p.dx != 0 ? p.dx - c.dx : l;
        final b = p.dy != 0 ? p.dy - c.dy : l;
        final d = sqrt(pow(a, 2) + pow(b, 2));
        final teta = a >= 0 ? atan(b / a) - pi : atan(b / a);
        final l2 = d <= l / 2 ? d * 2 : 0;
        final k = d <= l / 2 ? 1 - l2 / l : 0;
        final h = k * w;

        var paint = Paint()
          ..color = strokeColor
          ..strokeWidth = strokeWidth * (k * 2 + 1)
          ..strokeCap = StrokeCap.round;

        Offset startingPoint = Offset(
          c.dx - h * cos(teta),
          c.dy - h * sin(teta),
        );
        Offset endingPoint = Offset(
          c.dx + h * cos(teta),
          c.dy + h * sin(teta),
        );

        canvas.drawLine(
          startingPoint,
          endingPoint,
          paint,
        );
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
