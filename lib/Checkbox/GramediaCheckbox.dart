import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';

class GramediaCheckbox extends StatelessWidget {
  bool? value;
  Function(bool?)? onChanged;
  bool? tristate;
  bool? isError;
  Color? fillColor;
  Color? fillPressedColor;
  Color? fillHoverColor;
  Color? fillDisabledColor;
  Color? fillFocusedColor;
  Color? borderColor;
  GramediaCheckbox(
      {super.key,
      required this.value,
      this.onChanged,
      this.tristate,
      this.isError,
      this.fillColor,
      this.fillDisabledColor,
      this.fillFocusedColor,
      this.fillHoverColor,
      this.fillPressedColor});

  @override
  Widget build(BuildContext context) {
    final colorHelper = ColorHelper();
    final radiusHelper = RadiusHelper();
    Widget buildAnimation(bool? value, bool? isTerery) {
      if (isTerery == true) {
        switch (value) {
          case null:
            return Icon(FluentIcons.checkbox_indeterminate_16_filled);

          case true:
            return Icon(FluentIcons.checkmark_square_20_filled);
          case false:
            return Icon(FluentIcons.border_outside_20_filled);
        }
      } else {
        switch (value!) {
          case true:
            return Icon(FluentIcons.checkmark_square_20_filled);
          case false:
            return Icon(FluentIcons.border_outside_20_filled);
        }
      }
    }

    bool? setValue(bool? value, bool? isTerary) {
      if (isTerary == true) {
        switch (value) {
          case null:
            return false;
          case true:
            return null;
          case false:
            return true;
        }
      } else {
        switch (value!) {
          case true:
            return false;
          case false:
            return true;
        }
      }
    }

    return IconButton(
        hoverColor: fillHoverColor,
        style: IconButton.styleFrom(
            hoverColor: fillHoverColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        onPressed: onChanged != null
            ? () {
                onChanged!(setValue(value, tristate ?? false));
              }
            : null,
        icon: AnimatedSwitcher(
          duration: Duration(milliseconds: 500),
          child: buildAnimation(value, tristate ?? false),
        ));
  }
}
