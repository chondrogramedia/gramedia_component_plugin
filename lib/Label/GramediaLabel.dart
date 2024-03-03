import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:papilus_component_gramedia/Core/Color/Color.dart';
import 'package:papilus_component_gramedia/Core/Radius/Radius.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';

class GramediaLabel extends StatelessWidget {
  final GramediaColor? foregroundColor;
  final GramediaColor? backgroundColor;
  final String value;
  final IconData? icon;
  const GramediaLabel(
      {super.key,
      this.icon,
      this.backgroundColor,
      this.foregroundColor,
      required this.value});

  @override
  Widget build(BuildContext context) {
    var color = ColorHelper();
    var radius = RadiusHelper();
    return Container(
      decoration: BoxDecoration(
          color: color.getColor(GramediaColor.neutral50),
          borderRadius:
              BorderRadius.circular(radius.radius(RadiusCase.radius_XS))),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon != null
              ? Icon(
                  icon,
                  color: color
                      .getColor(foregroundColor ?? GramediaColor.neutral500),
                )
              : const SizedBox.shrink(),
          icon != null
              ? const SizedBox(
                  width: 4,
                )
              : const SizedBox.shrink(),
          GramediaText(
            value,
            fontStyle: UrbanistFont.mobile_text_s_medium,
            color: color.getColor(foregroundColor ?? GramediaColor.neutral500),
          )
        ],
      ),
    );
  }
}
