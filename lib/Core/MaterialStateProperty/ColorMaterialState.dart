import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

MaterialStateProperty<Color> colorState(Color baseColor,
    {required Color pressedColor,
    required Color disabledColor,
    required Color focusedColor,
    required Color hoverColor}) {
  return MaterialStateProperty.resolveWith<Color>((states) {
    if (states.contains(MaterialState.pressed)) {
      return pressedColor;
    } else if (states.contains(MaterialState.disabled)) {
      return disabledColor;
    } else if (states.contains(MaterialState.focused)) {
      return focusedColor;
    } else if (states.contains(MaterialState.hovered)) {
      return hoverColor;
    } else {
      return baseColor;
    }
  });
}
