import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/Core/MaterialStateProperty/BorderMaterialState.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';

enum IconButtonType { extrasmall, small, medium }

class GramediaIconButton extends StatelessWidget {
  Widget icon;
  Function()? onPressed;
  ButtonPriority? priority;
  IconButtonType? iconSize;
  Color? backgroundPressedColor;
  Color? backgroundColor;
  Color? backgroundDisabledColor;
  Color? backgroundFocusedColor;
  Color? backgroundHoverColor;
  Color? foregroundPressedColor;
  Color? foregroundColor;
  Color? foregroundDisabledColor;
  Color? foregroundFocusedColor;
  Color? foregroundHoverColor;
  OutlinedBorder? shapeBorder;
  OutlinedBorder? borderPressed;
  OutlinedBorder? borderHover;
  OutlinedBorder? borderDisabled;
  OutlinedBorder? borderFocused;

  GramediaIconButton(
      {required this.icon,
      this.onPressed,
      this.priority,
      this.iconSize,
      this.backgroundPressedColor,
      this.backgroundColor,
      this.backgroundDisabledColor,
      this.backgroundFocusedColor,
      this.backgroundHoverColor,
      this.foregroundPressedColor,
      this.foregroundColor,
      this.foregroundDisabledColor,
      this.foregroundFocusedColor,
      this.foregroundHoverColor,
      this.shapeBorder,
      this.borderDisabled,
      this.borderFocused,
      this.borderHover,
      this.borderPressed});

  final color = ColorHelper();
  final radius = RadiusHelper();
  final typography = TypographyHelper();

  Widget iconButton(
    ButtonPriority priority,
    IconButtonType buttonSize, {
    Color? backgroundPressedColor,
    Color? backgroundColor,
    Color? backgroundDisabledColor,
    Color? backgroundFocusedColor,
    Color? backgroundHoverColor,
    Color? foregroundPressedColor,
    Color? foregroundColor,
    Color? foregroundDisabledColor,
    Color? foregroundFocusedColor,
    Color? foregroundHoverColor,
    OutlinedBorder? shapeBorder,
    OutlinedBorder? borderPressed,
    OutlinedBorder? borderHover,
    OutlinedBorder? borderDisabled,
    OutlinedBorder? borderFocused,
  }) {
    switch (priority) {
      case ButtonPriority.primary:
        return iconButtonSize(buttonSize,
            backgroundPressedColor: backgroundPressedColor ??
                color.getColor(GramediaColor.brand600),
            backgroundColor:
                backgroundColor ?? color.getColor(GramediaColor.brand500),
            backgroundDisabledColor: backgroundDisabledColor ??
                color.getColor(GramediaColor.neutral50),
            backgroundFocusedColor: backgroundFocusedColor ??
                color.getColor(GramediaColor.brand500),
            backgroundHoverColor:
                backgroundHoverColor ?? color.getColor(GramediaColor.brand700),
            foregroundPressedColor:
                foregroundPressedColor ?? color.getColor(GramediaColor.white),
            foregroundColor:
                foregroundColor ?? color.getColor(GramediaColor.white),
            foregroundDisabledColor:
                foregroundDisabledColor ?? color.getColor(GramediaColor.white),
            foregroundFocusedColor:
                foregroundFocusedColor ?? color.getColor(GramediaColor.white),
            foregroundHoverColor:
                foregroundHoverColor ?? color.getColor(GramediaColor.white),
            shapeBorder: shapeBorder ?? CircleBorder(),
            borderPressed: borderPressed ?? CircleBorder(),
            borderHover: borderHover ?? CircleBorder(),
            borderDisabled: borderDisabled ?? CircleBorder(),
            borderFocused: borderFocused ?? CircleBorder());
      case ButtonPriority.secondary:
        return iconButtonSize(buttonSize,
            backgroundPressedColor: backgroundPressedColor ??
                color.getColor(GramediaColor.neutral50),
            backgroundColor:
                backgroundColor ?? color.getColor(GramediaColor.white),
            backgroundDisabledColor:
                backgroundDisabledColor ?? color.getColor(GramediaColor.white),
            backgroundFocusedColor:
                backgroundFocusedColor ?? color.getColor(GramediaColor.white),
            backgroundHoverColor: backgroundHoverColor ??
                color.getColor(GramediaColor.neutral700),
            foregroundPressedColor: foregroundPressedColor ??
                color.getColor(GramediaColor.neutral700),
            foregroundColor:
                foregroundColor ?? color.getColor(GramediaColor.neutral700),
            foregroundDisabledColor: foregroundDisabledColor ??
                color.getColor(GramediaColor.neutral200),
            foregroundFocusedColor: foregroundFocusedColor ??
                color.getColor(GramediaColor.neutral600),
            foregroundHoverColor: foregroundHoverColor ??
                color.getColor(GramediaColor.neutral700),
            shapeBorder: shapeBorder ??
                CircleBorder(
                    side: BorderSide(
                        color: color.getColor(GramediaColor.neutral150),
                        width: 1.0)),
            borderPressed: borderPressed ??
                CircleBorder(
                    side: BorderSide(
                        color: color.getColor(GramediaColor.neutral150),
                        width: 1.0)),
            borderHover: borderHover ??
                CircleBorder(
                    side: BorderSide(
                        color: color.getColor(GramediaColor.neutral700),
                        width: 1.0)),
            borderDisabled: borderDisabled ??
                CircleBorder(
                    side: BorderSide(
                        color: color.getColor(GramediaColor.neutral50),
                        width: 1.0)),
            borderFocused: borderFocused ??
                CircleBorder(
                    side: BorderSide(
                        color: color.getColor(GramediaColor.neutral150),
                        width: 1.0)));
      case ButtonPriority.tertiery:
        return iconButtonSize(buttonSize,
            backgroundPressedColor: backgroundPressedColor ??
                color.getColor(GramediaColor.neutral50),
            backgroundColor: backgroundColor ?? Colors.transparent,
            backgroundDisabledColor:
                backgroundDisabledColor ?? Colors.transparent,
            backgroundFocusedColor:
                backgroundFocusedColor ?? Colors.transparent,
            backgroundHoverColor:
                backgroundHoverColor ?? color.getColor(GramediaColor.neutral50),
            foregroundPressedColor: foregroundPressedColor ??
                color.getColor(GramediaColor.neutral700),
            foregroundColor:
                foregroundColor ?? color.getColor(GramediaColor.neutral700),
            foregroundDisabledColor: foregroundDisabledColor ??
                color.getColor(GramediaColor.neutral200),
            foregroundFocusedColor: foregroundFocusedColor ??
                color.getColor(GramediaColor.neutral600),
            foregroundHoverColor: foregroundHoverColor ??
                color.getColor(GramediaColor.neutral700),
            shapeBorder: shapeBorder ?? CircleBorder(),
            borderPressed: borderPressed ?? CircleBorder(),
            borderHover: borderHover ?? CircleBorder(),
            borderDisabled: borderDisabled ?? CircleBorder(),
            borderFocused: borderFocused ?? CircleBorder());
    }
  }

  Widget iconButtonSize(
    IconButtonType buttonSize, {
    required Color backgroundPressedColor,
    required Color backgroundColor,
    required Color backgroundDisabledColor,
    required Color backgroundFocusedColor,
    required Color backgroundHoverColor,
    required Color foregroundPressedColor,
    required Color foregroundColor,
    required Color foregroundDisabledColor,
    required Color foregroundFocusedColor,
    required Color foregroundHoverColor,
    required OutlinedBorder shapeBorder,
    required OutlinedBorder borderPressed,
    required OutlinedBorder borderHover,
    required OutlinedBorder borderDisabled,
    required OutlinedBorder borderFocused,
  }) {
    switch (buttonSize) {
      case IconButtonType.extrasmall:
        return TextButton(
          onPressed: onPressed,
          
          child: icon,
          
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero,),
              elevation: MaterialStateProperty.all<double>(0),
              iconColor: colorState(foregroundColor,
                  pressedColor: foregroundPressedColor,
                  disabledColor: foregroundDisabledColor,
                  focusedColor: foregroundFocusedColor,
                  hoverColor: foregroundHoverColor),
              iconSize: MaterialStateProperty.all<double>(12),
              fixedSize: MaterialStateProperty.all<Size>(Size(20, 20)),
              foregroundColor: colorState(foregroundColor,
                  pressedColor: foregroundPressedColor,
                  disabledColor: foregroundDisabledColor,
                  focusedColor: foregroundFocusedColor,
                  hoverColor: foregroundHoverColor),
              backgroundColor: colorState(backgroundColor,
                  pressedColor: backgroundPressedColor,
                  disabledColor: backgroundDisabledColor,
                  focusedColor: backgroundFocusedColor,
                  hoverColor: backgroundHoverColor),
              shape: border(
                  shapeBase: shapeBorder,
                  pressedShape: borderPressed,
                  focusedShape: borderFocused,
                  hoveredShape: borderHover,
                  disabledShape: borderDisabled)),
        );
      case IconButtonType.small:
        return TextButton(
          onPressed: onPressed,
          
          child: icon,
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero,),
              elevation: MaterialStateProperty.all<double>(0),
              iconColor: colorState(foregroundColor,
                  pressedColor: foregroundPressedColor,
                  disabledColor: foregroundDisabledColor,
                  focusedColor: foregroundFocusedColor,
                  hoverColor: foregroundHoverColor),
              iconSize: MaterialStateProperty.all<double>(16),
              fixedSize: MaterialStateProperty.all<Size>(Size(24, 24)),
              foregroundColor: colorState(foregroundColor,
                  pressedColor: foregroundPressedColor,
                  disabledColor: foregroundDisabledColor,
                  focusedColor: foregroundFocusedColor,
                  hoverColor: foregroundHoverColor),
              backgroundColor: colorState(backgroundColor,
                  pressedColor: backgroundPressedColor,
                  disabledColor: backgroundDisabledColor,
                  focusedColor: backgroundFocusedColor,
                  hoverColor: backgroundHoverColor),
              shape: border(
                  shapeBase: shapeBorder,
                  pressedShape: borderPressed,
                  focusedShape: borderFocused,
                  hoveredShape: borderHover,
                  disabledShape: borderDisabled)),
        );
      case IconButtonType.medium:
        return TextButton(
          onPressed: onPressed,
          
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero,),
              elevation: MaterialStateProperty.all<double>(0),
              iconColor: colorState(foregroundColor,
                  pressedColor: foregroundPressedColor,
                  disabledColor: foregroundDisabledColor,
                  focusedColor: foregroundFocusedColor,
                  hoverColor: foregroundHoverColor),
              fixedSize: MaterialStateProperty.all<Size>(Size(40, 40)),
              iconSize: MaterialStateProperty.all<double>(24),
              foregroundColor: colorState(foregroundColor,
                  pressedColor: foregroundPressedColor,
                  disabledColor: foregroundDisabledColor,
                  focusedColor: foregroundFocusedColor,
                  hoverColor: foregroundHoverColor),
              backgroundColor: colorState(backgroundColor,
                  pressedColor: backgroundPressedColor,
                  disabledColor: backgroundDisabledColor,
                  focusedColor: backgroundFocusedColor,
                  hoverColor: backgroundHoverColor),
              shape: border(
                  shapeBase: shapeBorder,
                  pressedShape: borderPressed,
                  focusedShape: borderFocused,
                  hoveredShape: borderHover,
                  disabledShape: borderDisabled)),
          child: icon,
        );
    }
  }

  

  @override
  Widget build(BuildContext context) {
    return iconButton(
        priority ?? ButtonPriority.primary, iconSize ?? IconButtonType.medium,
        backgroundColor: backgroundColor,
        backgroundDisabledColor: backgroundDisabledColor,
        backgroundPressedColor: backgroundPressedColor,
        backgroundFocusedColor: backgroundFocusedColor,
        backgroundHoverColor: backgroundHoverColor,
        foregroundColor: foregroundColor,
        foregroundDisabledColor: foregroundDisabledColor,
        foregroundFocusedColor: foregroundFocusedColor,
        foregroundHoverColor: foregroundHoverColor,
        foregroundPressedColor: foregroundPressedColor,
        shapeBorder: shapeBorder,
        borderDisabled: borderDisabled,
        borderFocused: borderFocused,
        borderHover: borderHover,
        borderPressed: borderPressed);
  }
}
