import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/Core/MaterialStateProperty/TextStyleMaterialState.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';

enum SearchFieldState { enable, error, focus, disable }

class GramediaSearchField extends StatefulWidget {
  bool isEnabled;
  TextEditingController controller;
  String? hintText;
  FocusNode? focusNode;
  Function(String)? onChanged;
  Function(String)? onSubmitted;
  Function()? onTap;

  GramediaSearchField(
      {required this.controller,
      this.hintText,
      this.focusNode,
      this.isEnabled = true,
      this.onChanged,
      this.onSubmitted,
      this.onTap});

  @override
  State<GramediaSearchField> createState() => _GramediaSearchFieldState();
}

class _GramediaSearchFieldState extends State<GramediaSearchField> {
  var colorStateValue = SearchFieldState.enable;

  SearchFieldState setValueState() {
    if (widget.isEnabled == false) {
      return SearchFieldState.disable;
    } else {
      return SearchFieldState.enable;
    }
  }

  @override
  void initState() {
    setState(() {
      colorStateValue = setValueState();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var color = ColorHelper();
    var typograpy = TypographyHelper();
    var radius = RadiusHelper();

    Color searchFieldColor(SearchFieldState state) {
      switch (state) {
        case SearchFieldState.enable:
          return color.getColor(GramediaColor.neutral600);
        case SearchFieldState.error:
          return color.getColor(GramediaColor.red50);
        case SearchFieldState.focus:
          return color.getColor(GramediaColor.neutral600);
        case SearchFieldState.disable:
          return color.getColor(GramediaColor.neutral150);
      }
    }

    Widget? iconButton(SearchFieldState state) {
      switch (state) {
        case SearchFieldState.enable:
          return null;
        case SearchFieldState.error:
          return null;
        case SearchFieldState.focus:
          return IconButton(
              onPressed: () {
                widget.controller.clear();
                FocusScope.of(context).unfocus();
                setState(() {
                  colorStateValue = SearchFieldState.enable;
                });
              },
              icon: Icon(FluentIcons.dismiss_circle_20_filled));
        case SearchFieldState.disable:
          return null;
      }
    }

    void onTapNull() {}

    return SizedBox(
      height: 48,
      child: TextField(
        enabled: widget.isEnabled,
        decoration: InputDecoration(
            suffixIcon: iconButton(colorStateValue),
            hintText: widget.hintText,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            prefixIcon: Icon(
              Icons.search,
              color: widget.isEnabled
                  ? searchFieldColor(colorStateValue)
                  : color.getColor(GramediaColor.neutral150),
            ),
            hintStyle:
                textStyleState(typograpy.getValue(UrbanistFont.mobile_text_s_medium, color.getColor(GramediaColor.neutral200), false),
                        pressedStyle: typograpy.getValue(
                            UrbanistFont.mobile_text_s_medium,
                            color.getColor(GramediaColor.neutral200),
                            false),
                        disabledStyle: typograpy.getValue(
                            UrbanistFont.mobile_text_s_medium,
                            color.getColor(GramediaColor.neutral200),
                            false),
                        hoveredStyle: typograpy.getValue(
                            UrbanistFont.mobile_text_s_medium,
                            color.getColor(GramediaColor.neutral200),
                            false),
                        focusedStyle: typograpy.getValue(
                            UrbanistFont.mobile_text_s_medium,
                            color.getColor(GramediaColor.neutral200),
                            false))
                    .resolve({
              MaterialState.disabled,
              MaterialState.error,
              MaterialState.focused,
              MaterialState.pressed
            }),
            fillColor: widget.isEnabled
                ? colorState(color.getColor(GramediaColor.white),
                        pressedColor: color.getColor(GramediaColor.white),
                        disabledColor: color.getColor(GramediaColor.neutral50),
                        focusedColor: color.getColor(GramediaColor.white),
                        hoverColor: color.getColor(GramediaColor.white))
                    .resolve({
                    MaterialState.disabled,
                    MaterialState.error,
                    MaterialState.focused,
                    MaterialState.pressed
                  })
                : color.getColor(GramediaColor.neutral50),
            filled: true,
            disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent, width: 0.0), borderRadius: BorderRadius.circular(radius.radius(RadiusCase.radius_infinity))),
            focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(color: color.getColor(GramediaColor.red500), width: 1.0), borderRadius: BorderRadius.circular(radius.radius(RadiusCase.radius_infinity))),
            errorBorder: OutlineInputBorder(borderSide: BorderSide(color: color.getColor(GramediaColor.red500), width: 1.0), borderRadius: BorderRadius.circular(radius.radius(RadiusCase.radius_infinity))),
            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: color.getColor(GramediaColor.neutral700), width: 2.0), borderRadius: BorderRadius.circular(radius.radius(RadiusCase.radius_infinity))),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: color.getColor(GramediaColor.neutral500), width: 1.0), borderRadius: BorderRadius.circular(radius.radius(RadiusCase.radius_infinity)))),
        controller: widget.controller,
        focusNode: widget.focusNode,
        onChanged: widget.onChanged,
        onTap: () {
          widget.onTap != null ? widget.onTap! : onTapNull();
          setState(() {
            colorStateValue = SearchFieldState.focus;
          });
        },
        onSubmitted: widget.onSubmitted,
      ),
    );
  }
}
