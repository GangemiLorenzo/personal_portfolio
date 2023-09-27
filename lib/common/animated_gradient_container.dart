import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class AnimatedGradientContainer extends StatelessWidget {
  const AnimatedGradientContainer({
    super.key,
    required this.child,
    required this.gradientSources,
    this.decoration,
  });

  final Widget child;
  final List<GradientSource> gradientSources;
  final BoxDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration,
      child: Stack(
        children: [
          ...gradientSources.map(
            (spot) => Positioned.fill(
              child: clipContainer(
                decoration: decoration,
                child: spot,
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }

  Widget clipContainer({
    required Widget child,
    BoxDecoration? decoration,
  }) {
    if (decoration?.shape == BoxShape.circle) {
      return ClipOval(child: child);
    }
    if (decoration?.borderRadius != null) {
      return ClipRRect(
        borderRadius: decoration!.borderRadius!,
        child: child,
      );
    }

    return child;
  }
}

class GradientSource extends StatelessWidget {
  const GradientSource({
    super.key,
    required this.color,
    required this.radius,
    required this.alignment,
    this.blurRadius = 0,
  });

  final Color color;
  final double radius;
  final double blurRadius;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(
        sigmaX: blurRadius,
        sigmaY: blurRadius,
      ),
      child: ShaderMask(
        shaderCallback: (Rect bounds) {
          return RadialGradient(
            center: alignment,
            radius: radius / min(bounds.height, bounds.width),
            colors: [
              color,
              Colors.transparent,
            ],
          ).createShader(bounds);
        },
        child: Container(
          color: Colors.white,
        ),
      ),
    );
  }
}
