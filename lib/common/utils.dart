import 'package:flutter/material.dart';
import 'package:layout/layout.dart';

bool isSmall(BuildContext context) =>
    context.layout.breakpoint < LayoutBreakpoint.md;

bool isMedium(BuildContext context) =>
    !isSmall(context) && context.layout.breakpoint < LayoutBreakpoint.lg;

bool isLarge(BuildContext context) => !isSmall(context) && !isMedium(context);
