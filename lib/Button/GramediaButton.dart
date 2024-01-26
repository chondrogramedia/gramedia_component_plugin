import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/Core/Color/Color.dart';
import 'package:papilus_component_gramedia/Core/Radius/Radius.dart';
import 'package:papilus_component_gramedia/Core/Typography/Typography.dart';

enum ButtonPriority { primary, secondary, tertiery }

class GramediaButton extends StatefulWidget {
  Widget? icon;
  Widget child;
  Function()? onPressed;
  ButtonPriority? priority;
  GramediaColor? background;
  GramediaButton(
      {super.key,
      this.icon,
      required this.child,
      required this.onPressed,
      this.priority,
      this.background});

  @override
  State<GramediaButton> createState() => _GramediaButtonState();
}

class _GramediaButtonState extends State<GramediaButton> {
  final color = ColorHelper();
  final radius = RadiusHelper();
  final typography = TypographyHelper();
  Widget button(ButtonPriority priority, Widget? icon, Color backgroundColor,
      double radius, Color borderColor) {
    switch (priority) {
      case ButtonPriority.primary:
        if (icon != null) {
          return ElevatedButton.icon(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return color.getColor(GramediaColor.brand700);
                    } else if (states.contains(MaterialState.disabled)) {
                      return color.getColor(GramediaColor.neutral200);
                    }
                    return backgroundColor;
                  },
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(radius),
                  ),
                ),
              ),
              onPressed: widget.onPressed,
              icon: icon,
              label: widget.child);
        } else {
          return ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return color.getColor(GramediaColor.brand700);
                    } else if (states.contains(MaterialState.disabled)) {
                      return color.getColor(GramediaColor.neutral200);
                    }
                    return backgroundColor;
                  },
                ),
                elevation: MaterialStateProperty.all(0),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(radius),
                  ),
                ),
              ),
              onPressed: widget.onPressed,
              child: widget.child);
        }
      case ButtonPriority.secondary:
        if (icon != null) {
          return ElevatedButton.icon(
              style: ButtonStyle(
                iconColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return color.getColor(GramediaColor.neutral600);
                    } else if (states.contains(MaterialState.disabled)) {
                      return color.getColor(GramediaColor.neutral200);
                    }
                    return color.getColor(GramediaColor.neutral700);
                  },
                ),
                textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return typography.getValue(
                          UrbanistFont.mobile_text_s_extrabold,
                          color.getColor(GramediaColor.neutral600),
                          false);
                    } else if (states.contains(MaterialState.disabled)) {
                      return typography.getValue(
                          UrbanistFont.mobile_text_s_extrabold,
                          color.getColor(GramediaColor.neutral200),
                          false);
                    }
                    return typography.getValue(
                        UrbanistFont.mobile_text_s_extrabold,
                        color.getColor(GramediaColor.neutral700),
                        false);
                  },
                ),
                foregroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return color.getColor(GramediaColor.neutral600);
                    } else if (states.contains(MaterialState.disabled)) {
                      return color.getColor(GramediaColor.neutral200);
                    }
                    return color.getColor(GramediaColor.neutral700);
                  },
                ),
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return color.getColor(GramediaColor.neutral50);
                    }
                    return backgroundColor;
                  },
                ),
                elevation: MaterialStateProperty.all(0),
                shape: MaterialStateProperty.resolveWith((state) {
                  if (state.contains(MaterialState.pressed)) {
                    return RoundedRectangleBorder(
                      side: BorderSide(color: borderColor),
                      borderRadius: BorderRadius.circular(radius),
                    );
                  } else if (state.contains(MaterialState.disabled)) {
                    return RoundedRectangleBorder(
                      side: BorderSide(
                          color: color.getColor(GramediaColor.neutral200)),
                      borderRadius: BorderRadius.circular(radius),
                    );
                  }
                  return RoundedRectangleBorder(
                    side: BorderSide(
                        color: color.getColor(GramediaColor.neutral150)),
                    borderRadius: BorderRadius.circular(radius),
                  );
                }),
              ),
              onPressed: widget.onPressed,
              icon: icon,
              label: widget.child);
        } else {
          return ElevatedButton(
              style: ButtonStyle(
                textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return typography.getValue(
                          UrbanistFont.mobile_text_s_extrabold,
                          color.getColor(GramediaColor.neutral600),
                          false);
                    } else if (states.contains(MaterialState.disabled)) {
                      return typography.getValue(
                          UrbanistFont.mobile_text_s_extrabold,
                          color.getColor(GramediaColor.neutral200),
                          false);
                    }
                    return typography.getValue(
                        UrbanistFont.mobile_text_s_extrabold,
                        color.getColor(GramediaColor.neutral700),
                        false);
                  },
                ),
                foregroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return color.getColor(GramediaColor.neutral600);
                    } else if (states.contains(MaterialState.disabled)) {
                      return color.getColor(GramediaColor.neutral200);
                    }
                    return color.getColor(GramediaColor.neutral700);
                  },
                ),
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return color.getColor(GramediaColor.neutral50);
                  }
                  return backgroundColor;
                }),
                elevation: MaterialStateProperty.all(0),
                shape: MaterialStateProperty.resolveWith((state) {
                  if (state.contains(MaterialState.pressed)) {
                    return RoundedRectangleBorder(
                      side: BorderSide(color: borderColor),
                      borderRadius: BorderRadius.circular(radius),
                    );
                  } else if (state.contains(MaterialState.disabled)) {
                    return RoundedRectangleBorder(
                      side: BorderSide(
                          color: color.getColor(GramediaColor.neutral200)),
                      borderRadius: BorderRadius.circular(radius),
                    );
                  }
                  return RoundedRectangleBorder(
                    side: BorderSide(
                        color: color.getColor(GramediaColor.neutral150)),
                    borderRadius: BorderRadius.circular(radius),
                  );
                }),
              ),
              onPressed: widget.onPressed,
              child: widget.child);
        }
      case ButtonPriority.tertiery:
        if (icon != null) {
          return TextButton.icon(
              style: ButtonStyle(
                iconColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return color.getColor(GramediaColor.neutral600);
                    } else if (states.contains(MaterialState.disabled)) {
                      return color.getColor(GramediaColor.neutral200);
                    }
                    return color.getColor(GramediaColor.neutral700);
                  },
                ),
                textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return typography.getValue(
                          UrbanistFont.mobile_text_s_extrabold,
                          color.getColor(GramediaColor.neutral600),
                          false);
                    } else if (states.contains(MaterialState.disabled)) {
                      return typography.getValue(
                          UrbanistFont.mobile_text_s_extrabold,
                          color.getColor(GramediaColor.neutral200),
                          false);
                    }
                    return typography.getValue(
                        UrbanistFont.mobile_text_s_extrabold,
                        color.getColor(GramediaColor.neutral700),
                        false);
                  },
                ),
                foregroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return color.getColor(GramediaColor.neutral600);
                    } else if (states.contains(MaterialState.disabled)) {
                      return color.getColor(GramediaColor.neutral200);
                    }
                    return color.getColor(GramediaColor.neutral700);
                  },
                ),
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return color.getColor(GramediaColor.neutral50);
                    }
                    return Colors.transparent;
                  },
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(radius),
                  ),
                ),
              ),
              onPressed: widget.onPressed,
              icon: icon,
              label: widget.child);
        } else {
          return TextButton(
              style: ButtonStyle(
                textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return typography.getValue(
                          UrbanistFont.mobile_text_s_extrabold,
                          color.getColor(GramediaColor.neutral600),
                          false);
                    } else if (states.contains(MaterialState.disabled)) {
                      return typography.getValue(
                          UrbanistFont.mobile_text_s_extrabold,
                          color.getColor(GramediaColor.neutral200),
                          false);
                    }
                    return typography.getValue(
                        UrbanistFont.mobile_text_s_extrabold,
                        color.getColor(GramediaColor.neutral700),
                        false);
                  },
                ),
                foregroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return color.getColor(GramediaColor.neutral600);
                    } else if (states.contains(MaterialState.disabled)) {
                      return color.getColor(GramediaColor.neutral200);
                    }
                    return color.getColor(GramediaColor.neutral700);
                  },
                ),
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return color.getColor(GramediaColor.neutral50);
                    }
                    return Colors.transparent;
                  },
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(radius),
                  ),
                ),
              ),
              onPressed: widget.onPressed,
              child: widget.child);
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return button(
        widget.priority ?? ButtonPriority.primary,
        widget.icon,
        color.getColor(widget.background ?? GramediaColor.white),
        radius.radius(RadiusCase.radius_S),
        color.getColor(GramediaColor.neutral700));
  }
}
