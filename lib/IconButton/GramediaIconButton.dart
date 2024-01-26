import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';

enum IconButtonType { extrasmall, small, medium }

class GramediaIconButton extends StatelessWidget {
  Widget icon;
  Function()? onPressed;
  ButtonPriority? priority;
  GramediaIconButton({required this.icon, this.onPressed, this.priority});

  Widget iconButton(ButtonPriority priority) {
    switch (priority) {
      case ButtonPriority.primary:
        return IconButton(
          onPressed: () {},
          icon: icon,
          style: ButtonStyle(
              shape: MaterialStateProperty.all<OutlinedBorder>(CircleBorder())),
        );
      case ButtonPriority.secondary:
        return IconButton(
          onPressed: () {},
          icon: icon,
          style: ButtonStyle(
              shape: MaterialStateProperty.all<OutlinedBorder>(CircleBorder())),
        );
      case ButtonPriority.tertiery:
        return IconButton(
          onPressed: () {},
          icon: icon,
          style: ButtonStyle(
              shape: MaterialStateProperty.all<OutlinedBorder>(CircleBorder())),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return iconButton(priority ?? ButtonPriority.primary);
  }
}
