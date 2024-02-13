import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

MaterialStateProperty<TextStyle> textStyleState(TextStyle baseStyle,
    {required TextStyle pressedStyle,
    required TextStyle disabledStyle,
    required TextStyle hoveredStyle,
    required TextStyle focusedStyle}) {
      return MaterialStateProperty.resolveWith<TextStyle>((states){
        if (states.contains(MaterialState.disabled)){
          return disabledStyle;
        } else if (states.contains(MaterialState.pressed)){
          return pressedStyle;
        } else if (states.contains(MaterialState.focused)){
          return focusedStyle;
        } else if (states.contains(MaterialState.hovered)){
          return hoveredStyle;
        } else {
          return baseStyle;
        }
      });
    }
