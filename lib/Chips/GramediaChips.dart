import 'package:flutter/material.dart';

import '../GramediaComponent.dart';

class GramediaChips extends StatelessWidget {
  Widget child;
  Function()? onPressed;
  GramediaColor backgroundColor;
  GramediaColor foregroundColor;
  bool isSelected;
  Widget? icon;
  GramediaChips(
      {super.key,
      required this.child,
      this.onPressed,
      this.foregroundColor = GramediaColor.white,
      this.backgroundColor = GramediaColor.neutral700,
      this.isSelected = false,
      this.icon});

  @override
  Widget build(BuildContext context) {
    var colorHelper = ColorHelper();
    var radiusHelper = RadiusHelper();
    if (icon != null) {
      return ElevatedButton(
        key: key,
        style: ElevatedButton.styleFrom(
          padding:
                const EdgeInsets.only(left: 12, right: 16, top: 8, bottom: 8),
            backgroundColor: colorHelper.getColor(backgroundColor),
            foregroundColor: colorHelper.getColor(foregroundColor),
            elevation: 0,
            shape: isSelected ? null : RoundedRectangleBorder(
                side: isSelected
                    ? BorderSide.none
                    : BorderSide(
                        color: colorHelper.getColor(GramediaColor.neutral150),
                        width: 1.0),
                borderRadius: BorderRadius.circular(
                    radiusHelper.radius(RadiusCase.radius_infinity)))),
        onPressed: onPressed,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [icon ?? SizedBox(),const SizedBox(width: 4,),child],
        ),
      );
    } else {
      return ElevatedButton(
        key: key,
        style: ElevatedButton.styleFrom(
            padding:
                const EdgeInsets.only(left: 12, right: 16, top: 8, bottom: 8),
            backgroundColor: colorHelper.getColor(backgroundColor),
            foregroundColor: colorHelper.getColor(foregroundColor),
            elevation: 0,
            shape: isSelected
                ? null
                : RoundedRectangleBorder(
                    side: isSelected
                        ? BorderSide.none
                        : BorderSide(
                            color: isSelected
                                ? Colors.transparent
                                : colorHelper
                                    .getColor(GramediaColor.neutral150),
                            width: 1.0),
                    borderRadius: BorderRadius.circular(
                        radiusHelper.radius(RadiusCase.radius_infinity)))),
        onPressed: onPressed,
        child: child,
      );
    }
  }
}
