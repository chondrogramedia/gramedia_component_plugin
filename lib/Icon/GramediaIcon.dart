import 'package:flutter/cupertino.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';

class GramediaIcon extends StatelessWidget {
  final IconData? icon;
  final double? size;
  final double? fill;
  final double? wight;
  final double? opticalSize;
  final GramediaColor? color;
  final TextDirection? textDirection;
  final List<Shadow>? shadows;
  const GramediaIcon(this.icon,
      {super.key,
      this.size,
      this.fill,
      this.wight,
      this.color,
      this.opticalSize,
      this.textDirection,
      this.shadows});

  @override
  Widget build(BuildContext context) {
    var colorHelper = ColorHelper();
    return Icon(
      icon,
      size: size,
      fill: fill,
      weight: wight,
      color: colorHelper.getColor(color ?? GramediaColor.neutral700),
      opticalSize: opticalSize,
      textDirection: textDirection,
      shadows: shadows,
    );
  }
}
