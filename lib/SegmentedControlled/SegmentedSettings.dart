import 'package:flutter/material.dart';

class SegmentedSettings {
  final Color splashColor;
  final Color highlightColor;
  final InteractiveInkFeatureFactory splashFactory;
  final BorderRadius? borderRadius;
  final double? radius;
  final MaterialStateProperty<Color?>? overlayColor;
  final Color? hoverColor;
  final MouseCursor? mouseCursor;

  SegmentedSettings({
    this.splashColor = Colors.transparent,
    this.highlightColor = Colors.transparent,
    this.splashFactory = NoSplash.splashFactory,
    this.borderRadius,
    this.radius,
    this.overlayColor,
    this.hoverColor,
    this.mouseCursor,
  });
}