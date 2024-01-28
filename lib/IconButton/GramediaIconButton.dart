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
            backgroundDisabledColor: backgroundDisabledColor ??
                color.getColor(GramediaColor.neutral150),
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
                        color: color.getColor(GramediaColor.neutral150))),
            borderPressed: borderPressed ??
                CircleBorder(
                    side: BorderSide(
                        color: color.getColor(GramediaColor.neutral150))),
            borderHover: borderHover ??
                CircleBorder(
                    side: BorderSide(
                        color: color.getColor(GramediaColor.neutral700))),
            borderDisabled: borderDisabled ??
                CircleBorder(
                    side: BorderSide(
                        color: color.getColor(GramediaColor.neutral50))),
            borderFocused: borderFocused ??
                CircleBorder(
                    side: BorderSide(
                        color: color.getColor(GramediaColor.neutral150))));
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
        return IconButton(
          iconSize: 12,
          onPressed: onPressed,
          icon: icon,
          style: ButtonStyle(
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
        return IconButton(
          iconSize: 16,
          onPressed: onPressed,
          icon: icon,
          style: ButtonStyle(
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
        return IconButton(
          iconSize: 24,
          onPressed: onPressed,
          icon: icon,
          style: ButtonStyle(
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
        foregroundPressedColor: foregroundPressedColor);
  }
}
