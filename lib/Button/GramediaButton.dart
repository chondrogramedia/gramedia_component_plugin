import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/Core/Color/Color.dart';
import 'package:papilus_component_gramedia/Core/MaterialStateProperty/BorderMaterialState.dart';
import 'package:papilus_component_gramedia/Core/MaterialStateProperty/TextStyleMaterialState.dart';
import 'package:papilus_component_gramedia/Core/Radius/Radius.dart';
import 'package:papilus_component_gramedia/Core/Typography/Typography.dart';

import '../Core/MaterialStateProperty/ColorMaterialState.dart';

enum ButtonPriority { primary, secondary, tertiery }

class GramediaButton extends StatefulWidget {
  Widget? icon;
  Widget child;
  Function()? onPressed;
  ButtonPriority? priority;
  GramediaColor? background;
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

  GramediaButton(
      {super.key,
      this.icon,
      required this.child,
      required this.onPressed,
      this.priority,
      this.background,
      this.backgroundColor,
      this.backgroundDisabledColor,
      this.backgroundFocusedColor,
      this.backgroundHoverColor,
      this.backgroundPressedColor,
      this.foregroundColor,
      this.foregroundDisabledColor,
      this.foregroundFocusedColor,
      this.foregroundHoverColor,
      this.foregroundPressedColor});

  @override
  State<GramediaButton> createState() => _GramediaButtonState();
}

class _GramediaButtonState extends State<GramediaButton> {
  final color = ColorHelper();
  final radiusHelper = RadiusHelper();
  final typography = TypographyHelper();

  Widget buttonIcon(Widget? icon,
      {required Color backgroundPressedColor,
      required Color backgroundColor,
      required Color backgroundDisabledColor,
      required Color backgroundFocusedColor,
      required Color backgroundHoverColor,
      required Color foregroundPressedColor,
      required Color foregroundColor,
      required Color foregroundDisabledColor,
      required Color foregroundFocusedColor,
      required Color foregroundHoverColor,
      required TextStyle baseStyle,
      required TextStyle pressedStyle,
      required TextStyle hoveredStyle,
      required TextStyle focusedStyle,
      required TextStyle disabledStyle,
      required OutlinedBorder baseBorder,
      required OutlinedBorder pressedBorder,
      required OutlinedBorder hoveredBorder,
      required OutlinedBorder focusedBorder,
      required OutlinedBorder disabledBorder}) {
    return ElevatedButton.icon(
      onPressed: widget.onPressed,
      icon: icon!,
      label: widget.child,
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
          elevation: MaterialStateProperty.all(0),
          textStyle: textStyleState(baseStyle,
              pressedStyle: pressedStyle,
              disabledStyle: disabledStyle,
              hoveredStyle: hoveredStyle,
              focusedStyle: focusedStyle),
          shape: border(
              shapeBase: baseBorder,
              pressedShape: pressedBorder,
              focusedShape: focusedBorder,
              hoveredShape: hoveredBorder,
              disabledShape: disabledBorder),
          iconColor: colorState(foregroundColor,
              pressedColor: foregroundPressedColor,
              disabledColor: foregroundDisabledColor,
              focusedColor: foregroundFocusedColor,
              hoverColor: foregroundHoverColor)),
    );
  }

  Widget textButtonIcon(Widget? icon,
      {required Color backgroundPressedColor,
      required Color backgroundColor,
      required Color backgroundDisabledColor,
      required Color backgroundFocusedColor,
      required Color backgroundHoverColor,
      required Color foregroundPressedColor,
      required Color foregroundColor,
      required Color foregroundDisabledColor,
      required Color foregroundFocusedColor,
      required Color foregroundHoverColor,
      required TextStyle baseStyle,
      required TextStyle pressedStyle,
      required TextStyle hoveredStyle,
      required TextStyle focusedStyle,
      required TextStyle disabledStyle,
      required OutlinedBorder baseBorder,
      required OutlinedBorder pressedBorder,
      required OutlinedBorder hoveredBorder,
      required OutlinedBorder focusedBorder,
      required OutlinedBorder disabledBorder}) {
    return TextButton.icon(
      onPressed: widget.onPressed,
      icon: icon!,
      label: widget.child,
      style: ButtonStyle(
          foregroundColor: colorState(foregroundColor,
              pressedColor: foregroundPressedColor,
              disabledColor: foregroundDisabledColor,
              focusedColor: foregroundFocusedColor,
              hoverColor: foregroundHoverColor),
          elevation: MaterialStateProperty.all(0),
          textStyle: textStyleState(baseStyle,
              pressedStyle: pressedStyle,
              disabledStyle: disabledStyle,
              hoveredStyle: hoveredStyle,
              focusedStyle: focusedStyle),
          shape: border(
              shapeBase: baseBorder,
              pressedShape: pressedBorder,
              focusedShape: focusedBorder,
              hoveredShape: hoveredBorder,
              disabledShape: disabledBorder),
          iconColor: colorState(foregroundColor,
              pressedColor: foregroundPressedColor,
              disabledColor: foregroundDisabledColor,
              focusedColor: foregroundFocusedColor,
              hoverColor: foregroundHoverColor)),
    );
  }

  Widget buttonBasic(
      {required Color backgroundPressedColor,
      required Color backgroundColor,
      required Color backgroundDisabledColor,
      required Color backgroundFocusedColor,
      required Color backgroundHoverColor,
      required Color foregroundPressedColor,
      required Color foregroundColor,
      required Color foregroundDisabledColor,
      required Color foregroundFocusedColor,
      required Color foregroundHoverColor,
      required TextStyle baseStyle,
      required TextStyle pressedStyle,
      required TextStyle hoveredStyle,
      required TextStyle focusedStyle,
      required TextStyle disabledStyle,
      required OutlinedBorder baseBorder,
      required OutlinedBorder pressedBorder,
      required OutlinedBorder hoveredBorder,
      required OutlinedBorder focusedBorder,
      required OutlinedBorder disabledBorder}) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      child: widget.child,
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
          elevation: MaterialStateProperty.all(0),
          textStyle: textStyleState(baseStyle,
              pressedStyle: pressedStyle,
              disabledStyle: disabledStyle,
              hoveredStyle: hoveredStyle,
              focusedStyle: focusedStyle),
          shape: border(
              shapeBase: baseBorder,
              pressedShape: pressedBorder,
              focusedShape: focusedBorder,
              hoveredShape: hoveredBorder,
              disabledShape: disabledBorder)),
    );
  }

  Widget textButton(
      {required Color backgroundPressedColor,
      required Color backgroundColor,
      required Color backgroundDisabledColor,
      required Color backgroundFocusedColor,
      required Color backgroundHoverColor,
      required Color foregroundPressedColor,
      required Color foregroundColor,
      required Color foregroundDisabledColor,
      required Color foregroundFocusedColor,
      required Color foregroundHoverColor,
      required TextStyle baseStyle,
      required TextStyle pressedStyle,
      required TextStyle hoveredStyle,
      required TextStyle focusedStyle,
      required TextStyle disabledStyle,
      required OutlinedBorder baseBorder,
      required OutlinedBorder pressedBorder,
      required OutlinedBorder hoveredBorder,
      required OutlinedBorder focusedBorder,
      required OutlinedBorder disabledBorder}) {
    return TextButton(
      onPressed: widget.onPressed,
      child: widget.child,
      style: ButtonStyle(
          foregroundColor: colorState(foregroundColor,
              pressedColor: foregroundPressedColor,
              disabledColor: foregroundDisabledColor,
              focusedColor: foregroundFocusedColor,
              hoverColor: foregroundHoverColor),
          elevation: MaterialStateProperty.all(0),
          textStyle: textStyleState(baseStyle,
              pressedStyle: pressedStyle,
              disabledStyle: disabledStyle,
              hoveredStyle: hoveredStyle,
              focusedStyle: focusedStyle),
          shape: border(
              shapeBase: baseBorder,
              pressedShape: pressedBorder,
              focusedShape: focusedBorder,
              hoveredShape: hoveredBorder,
              disabledShape: disabledBorder)),
    );
  }

  Widget buttonAction(ButtonPriority priority,
      {Widget? icon,
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
      RadiusCase? radius}) {
    switch (priority) {
      case ButtonPriority.primary:
        if (icon != null) {
          return buttonIcon(
            icon,
            backgroundPressedColor: backgroundPressedColor ??
                color.getColor(GramediaColor.brand600),
            backgroundColor:
                backgroundColor ?? color.getColor(GramediaColor.brand500),
            backgroundDisabledColor: backgroundDisabledColor ??
                color.getColor(GramediaColor.neutral200),
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
            baseStyle: typography.getValue(UrbanistFont.mobile_text_s_extrabold,
                foregroundColor ?? color.getColor(GramediaColor.white), false),
            pressedStyle: typography.getValue(
                UrbanistFont.mobile_text_s_extrabold,
                foregroundPressedColor ?? color.getColor(GramediaColor.white),
                false),
            hoveredStyle: typography.getValue(
                UrbanistFont.mobile_text_s_extrabold,
                foregroundHoverColor ?? color.getColor(GramediaColor.white),
                false),
            focusedStyle: typography.getValue(
                UrbanistFont.mobile_text_s_extrabold,
                foregroundFocusedColor ?? color.getColor(GramediaColor.white),
                false),
            disabledStyle: typography.getValue(
                UrbanistFont.mobile_text_s_extrabold,
                foregroundDisabledColor ?? color.getColor(GramediaColor.white),
                false),
            baseBorder: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                    radiusHelper.radius(radius ?? RadiusCase.radius_S))),
            pressedBorder: RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                  radiusHelper.radius(radius ?? RadiusCase.radius_S)),
            ),
            hoveredBorder: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                    radiusHelper.radius(radius ?? RadiusCase.radius_S))),
            focusedBorder: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                    radiusHelper.radius(radius ?? RadiusCase.radius_S))),
            disabledBorder: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                    radiusHelper.radius(radius ?? RadiusCase.radius_S))),
          );
        } else {
          return buttonBasic(
            backgroundPressedColor: backgroundPressedColor ??
                color.getColor(GramediaColor.brand600),
            backgroundColor:
                backgroundColor ?? color.getColor(GramediaColor.brand500),
            backgroundDisabledColor: backgroundDisabledColor ??
                color.getColor(GramediaColor.neutral200),
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
            baseStyle: typography.getValue(UrbanistFont.mobile_text_s_extrabold,
                foregroundColor ?? color.getColor(GramediaColor.white), false),
            pressedStyle: typography.getValue(
                UrbanistFont.mobile_text_s_extrabold,
                foregroundPressedColor ?? color.getColor(GramediaColor.white),
                false),
            hoveredStyle: typography.getValue(
                UrbanistFont.mobile_text_s_extrabold,
                foregroundHoverColor ?? color.getColor(GramediaColor.white),
                false),
            focusedStyle: typography.getValue(
                UrbanistFont.mobile_text_s_extrabold,
                foregroundFocusedColor ?? color.getColor(GramediaColor.white),
                false),
            disabledStyle: typography.getValue(
                UrbanistFont.mobile_text_s_extrabold,
                foregroundDisabledColor ?? color.getColor(GramediaColor.white),
                false),
            baseBorder: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                    radiusHelper.radius(radius ?? RadiusCase.radius_S))),
            pressedBorder: RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                  radiusHelper.radius(radius ?? RadiusCase.radius_S)),
            ),
            hoveredBorder: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                    radiusHelper.radius(radius ?? RadiusCase.radius_S))),
            focusedBorder: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                    radiusHelper.radius(radius ?? RadiusCase.radius_S))),
            disabledBorder: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                    radiusHelper.radius(radius ?? RadiusCase.radius_S))),
          );
        }
      case ButtonPriority.secondary:
        if (icon != null) {
          return buttonIcon(
            icon,
            backgroundPressedColor: backgroundPressedColor ??
                color.getColor(GramediaColor.brand600),
            backgroundColor:
                backgroundColor ?? color.getColor(GramediaColor.brand500),
            backgroundDisabledColor: backgroundDisabledColor ??
                color.getColor(GramediaColor.neutral200),
            backgroundFocusedColor: backgroundFocusedColor ??
                color.getColor(GramediaColor.brand500),
            backgroundHoverColor:
                backgroundHoverColor ?? color.getColor(GramediaColor.brand700),
            foregroundPressedColor: foregroundPressedColor ??
                color.getColor(GramediaColor.neutral600),
            foregroundColor:
                foregroundColor ?? color.getColor(GramediaColor.neutral700),
            foregroundDisabledColor: foregroundDisabledColor ??
                color.getColor(GramediaColor.neutral200),
            foregroundFocusedColor: foregroundFocusedColor ??
                color.getColor(GramediaColor.neutral600),
            foregroundHoverColor: foregroundHoverColor ??
                color.getColor(GramediaColor.neutral700),
            baseStyle: typography.getValue(
                UrbanistFont.mobile_text_s_extrabold,
                foregroundColor ?? color.getColor(GramediaColor.neutral700),
                false),
            pressedStyle: typography.getValue(
                UrbanistFont.mobile_text_s_extrabold,
                foregroundPressedColor ??
                    color.getColor(GramediaColor.neutral600),
                false),
            hoveredStyle: typography.getValue(
                UrbanistFont.mobile_text_s_extrabold,
                foregroundHoverColor ??
                    color.getColor(GramediaColor.neutral700),
                false),
            focusedStyle: typography.getValue(
                UrbanistFont.mobile_text_s_extrabold,
                foregroundFocusedColor ??
                    color.getColor(GramediaColor.neutral600),
                false),
            disabledStyle: typography.getValue(
                UrbanistFont.mobile_text_s_extrabold,
                foregroundDisabledColor ??
                    color.getColor(GramediaColor.neutral200),
                false),
            baseBorder: RoundedRectangleBorder(
                side: BorderSide(
                    color: color.getColor(GramediaColor.neutral150),
                    width: 1.0),
                borderRadius: BorderRadius.circular(
                    radiusHelper.radius(radius ?? RadiusCase.radius_S))),
            pressedBorder: RoundedRectangleBorder(
              side: BorderSide(
                  color: color.getColor(GramediaColor.neutral600), width: 1.0),
              borderRadius: BorderRadius.circular(
                  radiusHelper.radius(radius ?? RadiusCase.radius_S)),
            ),
            hoveredBorder: RoundedRectangleBorder(
                side: BorderSide(
                    color: color.getColor(GramediaColor.neutral700),
                    width: 1.0),
                borderRadius: BorderRadius.circular(
                    radiusHelper.radius(radius ?? RadiusCase.radius_S))),
            focusedBorder: RoundedRectangleBorder(
                side: BorderSide(
                    color: color.getColor(GramediaColor.neutral150),
                    width: 1.0),
                borderRadius: BorderRadius.circular(
                    radiusHelper.radius(radius ?? RadiusCase.radius_S))),
            disabledBorder: RoundedRectangleBorder(
                side: BorderSide(
                    color: color.getColor(GramediaColor.neutral50), width: 1.0),
                borderRadius: BorderRadius.circular(
                    radiusHelper.radius(radius ?? RadiusCase.radius_S))),
          );
        } else {
          return buttonBasic(
            backgroundPressedColor: backgroundPressedColor ??
                color.getColor(GramediaColor.neutral50),
            backgroundColor:
                backgroundColor ?? color.getColor(GramediaColor.white),
            backgroundDisabledColor: backgroundDisabledColor ??
                color.getColor(GramediaColor.neutral50),
            backgroundFocusedColor:
                backgroundFocusedColor ?? color.getColor(GramediaColor.white),
            backgroundHoverColor:
                backgroundHoverColor ?? color.getColor(GramediaColor.white),
            foregroundPressedColor: foregroundPressedColor ??
                color.getColor(GramediaColor.neutral600),
            foregroundColor:
                foregroundColor ?? color.getColor(GramediaColor.neutral700),
            foregroundDisabledColor: foregroundDisabledColor ??
                color.getColor(GramediaColor.neutral200),
            foregroundFocusedColor: foregroundFocusedColor ??
                color.getColor(GramediaColor.neutral600),
            foregroundHoverColor: foregroundHoverColor ??
                color.getColor(GramediaColor.neutral700),
            baseStyle: typography.getValue(
                UrbanistFont.mobile_text_s_extrabold,
                foregroundColor ?? color.getColor(GramediaColor.neutral700),
                false),
            pressedStyle: typography.getValue(
                UrbanistFont.mobile_text_s_extrabold,
                foregroundPressedColor ??
                    color.getColor(GramediaColor.neutral600),
                false),
            hoveredStyle: typography.getValue(
                UrbanistFont.mobile_text_s_extrabold,
                foregroundHoverColor ??
                    color.getColor(GramediaColor.neutral700),
                false),
            focusedStyle: typography.getValue(
                UrbanistFont.mobile_text_s_extrabold,
                foregroundFocusedColor ??
                    color.getColor(GramediaColor.neutral600),
                false),
            disabledStyle: typography.getValue(
                UrbanistFont.mobile_text_s_extrabold,
                foregroundDisabledColor ??
                    color.getColor(GramediaColor.neutral200),
                false),
            baseBorder: RoundedRectangleBorder(
                side: BorderSide(
                    color: color.getColor(GramediaColor.neutral150),
                    width: 1.0),
                borderRadius: BorderRadius.circular(
                    radiusHelper.radius(radius ?? RadiusCase.radius_S))),
            pressedBorder: RoundedRectangleBorder(
              side: BorderSide(
                  color: color.getColor(GramediaColor.neutral600), width: 1.0),
              borderRadius: BorderRadius.circular(
                  radiusHelper.radius(radius ?? RadiusCase.radius_S)),
            ),
            hoveredBorder: RoundedRectangleBorder(
                side: BorderSide(
                    color: color.getColor(GramediaColor.neutral700),
                    width: 1.0),
                borderRadius: BorderRadius.circular(
                    radiusHelper.radius(radius ?? RadiusCase.radius_S))),
            focusedBorder: RoundedRectangleBorder(
                side: BorderSide(
                    color: color.getColor(GramediaColor.neutral150),
                    width: 1.0),
                borderRadius: BorderRadius.circular(
                    radiusHelper.radius(radius ?? RadiusCase.radius_S))),
            disabledBorder: RoundedRectangleBorder(
                side: BorderSide(
                    color: color.getColor(GramediaColor.neutral50), width: 1.0),
                borderRadius: BorderRadius.circular(
                    radiusHelper.radius(radius ?? RadiusCase.radius_S))),
          );
        }
      case ButtonPriority.tertiery:
        if (icon != null) {
          return textButtonIcon(
            icon,
            backgroundPressedColor: backgroundPressedColor ??
                color.getColor(GramediaColor.brand600),
            backgroundColor:
                backgroundColor ?? color.getColor(GramediaColor.brand500),
            backgroundDisabledColor: backgroundDisabledColor ??
                color.getColor(GramediaColor.neutral200),
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
            baseStyle: typography.getValue(UrbanistFont.mobile_text_s_extrabold,
                foregroundColor ?? color.getColor(GramediaColor.white), false),
            pressedStyle: typography.getValue(
                UrbanistFont.mobile_text_s_extrabold,
                foregroundPressedColor ?? color.getColor(GramediaColor.white),
                false),
            hoveredStyle: typography.getValue(
                UrbanistFont.mobile_text_s_extrabold,
                foregroundHoverColor ?? color.getColor(GramediaColor.white),
                false),
            focusedStyle: typography.getValue(
                UrbanistFont.mobile_text_s_extrabold,
                foregroundFocusedColor ?? color.getColor(GramediaColor.white),
                false),
            disabledStyle: typography.getValue(
                UrbanistFont.mobile_text_s_extrabold,
                foregroundDisabledColor ?? color.getColor(GramediaColor.white),
                false),
            baseBorder: const RoundedRectangleBorder(
              side: BorderSide.none,
            ),
            pressedBorder: const RoundedRectangleBorder(
              side: BorderSide.none,
            ),
            hoveredBorder: const RoundedRectangleBorder(
              side: BorderSide.none,
            ),
            focusedBorder: const RoundedRectangleBorder(
              side: BorderSide.none,
            ),
            disabledBorder: const RoundedRectangleBorder(
              side: BorderSide.none,
            ),
          );
        } else {
          return textButton(
              backgroundPressedColor: backgroundPressedColor ??
                  color.getColor(GramediaColor.neutral50),
              backgroundColor: backgroundColor ?? Colors.transparent,
              backgroundDisabledColor:
                  backgroundDisabledColor ?? Colors.transparent,
              backgroundFocusedColor:
                  backgroundFocusedColor ?? Colors.transparent,
              backgroundHoverColor: backgroundHoverColor ??
                  color.getColor(GramediaColor.neutral50),
              foregroundPressedColor: foregroundPressedColor ??
                  color.getColor(GramediaColor.neutral600),
              foregroundColor:
                  foregroundColor ?? color.getColor(GramediaColor.neutral700),
              foregroundDisabledColor: foregroundDisabledColor ??
                  color.getColor(GramediaColor.neutral200),
              foregroundFocusedColor: foregroundFocusedColor ??
                  color.getColor(GramediaColor.neutral600),
              foregroundHoverColor: foregroundHoverColor ??
                  color.getColor(GramediaColor.neutral700),
              baseStyle: typography.getValue(
                  UrbanistFont.mobile_text_s_extrabold,
                  foregroundColor ?? color.getColor(GramediaColor.neutral700),
                  false),
              pressedStyle: typography.getValue(
                  UrbanistFont.mobile_text_s_extrabold,
                  foregroundPressedColor ??
                      color.getColor(GramediaColor.neutral600),
                  false),
              hoveredStyle: typography.getValue(
                  UrbanistFont.mobile_text_s_extrabold,
                  foregroundHoverColor ??
                      color.getColor(GramediaColor.neutral700),
                  false),
              focusedStyle: typography.getValue(
                  UrbanistFont.mobile_text_s_extrabold,
                  foregroundFocusedColor ??
                      color.getColor(GramediaColor.neutral600),
                  false),
              disabledStyle: typography.getValue(
                  UrbanistFont.mobile_text_s_extrabold,
                  foregroundDisabledColor ??
                      color.getColor(GramediaColor.neutral200),
                  false),
              baseBorder: const RoundedRectangleBorder(
                side: BorderSide.none,
              ),
              focusedBorder: const RoundedRectangleBorder(
                side: BorderSide.none,
              ),
              hoveredBorder: const RoundedRectangleBorder(
                side: BorderSide.none,
              ),
              pressedBorder: const RoundedRectangleBorder(
                side: BorderSide.none,
              ),
              disabledBorder: const RoundedRectangleBorder(
                side: BorderSide.none,
              ));
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return buttonAction(widget.priority ?? ButtonPriority.primary,
        foregroundColor: widget.foregroundColor,
        foregroundDisabledColor: widget.foregroundDisabledColor,
        foregroundFocusedColor: widget.foregroundFocusedColor,
        foregroundHoverColor: widget.foregroundHoverColor,
        foregroundPressedColor: widget.foregroundPressedColor,
        backgroundColor: widget.backgroundColor,
        backgroundDisabledColor: widget.backgroundDisabledColor,
        backgroundFocusedColor: widget.backgroundFocusedColor,
        backgroundHoverColor: widget.backgroundHoverColor,
        backgroundPressedColor: widget.backgroundPressedColor);
  }
}
