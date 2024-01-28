import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

MaterialStateProperty<OutlinedBorder> border(
    {required OutlinedBorder shapeBase,
    required OutlinedBorder pressedShape,
    required OutlinedBorder focusedShape,
    required OutlinedBorder hoveredShape,
    required OutlinedBorder disabledShape}) {
  return MaterialStateProperty.resolveWith<OutlinedBorder>((states) {
    if (states.contains(MaterialState.disabled)){
      return disabledShape;
    } else if (states.contains(MaterialState.pressed)) {
      return pressedShape;
    } else if (states.contains(MaterialState.hovered)){
      return hoveredShape;
    } else if (states.contains(MaterialState.focused)){
      return focusedShape;
    } else {
      return shapeBase;
    }
  });
}
