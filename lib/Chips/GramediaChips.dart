import 'package:flutter/material.dart';

import '../GramediaComponent.dart';

class GramediaChips extends StatelessWidget {
  Widget child;
  Function()? onPressed;
  GramediaColor backgroundColor;
  GramediaColor foregroundColor;
  GramediaChips(
      {super.key,
      required this.child,
      this.onPressed,
      this.foregroundColor = GramediaColor.white,
      this.backgroundColor = GramediaColor.neutral700});

  @override
  Widget build(BuildContext context) {
    var colorHelper = ColorHelper();
    var radiusHelper = RadiusHelper();
    return ElevatedButton(
      key: key,
      style: ElevatedButton.styleFrom(
          backgroundColor: colorHelper.getColor(backgroundColor),
          foregroundColor: colorHelper.getColor(foregroundColor),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  radiusHelper.radius(RadiusCase.radius_infinity)))),
      onPressed: onPressed,
      child: child,
    );
  }
}
