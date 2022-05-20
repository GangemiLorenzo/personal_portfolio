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

class _StrokeGridPatternState extends State<StrokeGridPattern>
    with TickerProviderStateMixin {
  late Offset _position;
  late Offset _pointer;
  late AnimationController _controller;
  late Animation _angleAnimation;

  @override
  void initState() {
    _position = Offset.zero;
    _pointer = Offset.zero;

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 10),
    );

    _angleAnimation = Tween(begin: 0.0, end: 360.0).animate(_controller);

    _controller
      ..addListener(() {
        if (_pointer == Offset.zero) {
          double angle = _angleAnimation.value;
          double radius = 40.0;
          double x = -200 + _controller.value * 1000;
          double y = radius * cos(pi * 2 * angle * 5 / 360);
          setState(
            () => {_position = Offset(40, 40).translate(x, y + 80)},
          );
        }
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.repeat();
        } else if (status == AnimationStatus.dismissed) {
          _controller.forward();
        }
      });

    _controller.forward();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        RenderBox box = context.findRenderObject() as RenderBox;
        setState(
          () => {
            _pointer = box.globalToLocal(event.position),
            if (widget.paddingVertical != null ||
                widget.paddingHorizontal != null)
              _pointer = _pointer.translate(
                -(widget.paddingHorizontal ?? 0.0),
                -(widget.paddingVertical ?? 0.0),
              ),
          },
        );
      },
      onExit: (event) {
        setState(
          () => {
            _position = Offset.zero,
            _pointer = Offset.zero,
          },
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: widget.paddingHorizontal ?? 0.0,
            vertical: widget.paddingVertical ?? 0.0),
        child: CustomPaint(
          painter: _StrokeGridPainter(
            p: _pointer.dx == 0 ? _position : _pointer,
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
