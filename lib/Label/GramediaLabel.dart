import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:papilus_component_gramedia/Core/Color/Color.dart';
import 'package:papilus_component_gramedia/Core/Radius/Radius.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';

class GramediaLabelWidget extends StatelessWidget {
  final Color foregroundColor;
  final Color backgroundColor;
  final String message;
  const GramediaLabelWidget(
      {super.key,
      required this.message,
      required this.backgroundColor,
      required this.foregroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(RadiusCase.radius_2XS.value)),
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      child: GramediaText(
        message,
        fontStyle: UrbanistFont.mobile_text_2xs_medium,
        color: foregroundColor,
      ),
    );
  }
}
