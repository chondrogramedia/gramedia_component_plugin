import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/Core/Color/Color.dart';

class GramediaSwitcher extends StatelessWidget {
  Function(bool)? onChanged;
  bool value;
  GramediaSwitcher({super.key, required this.value, this.onChanged});

  MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      var helper = ColorHelper();
      if (states.contains(MaterialState.selected)) {
        return Icon(
          Icons.check,
          color: helper.getColor(GramediaColor.neutral700),
        );
      } else {
        return null;
      }
    },
  );

  @override
  Widget build(BuildContext context) {
    final colorHelper = ColorHelper();
    return Switch(
      thumbIcon: thumbIcon,
      value: value,
      onChanged: onChanged,
      inactiveThumbColor: colorHelper.getColor(GramediaColor.white),
      activeColor: colorHelper.getColor(GramediaColor.white),
      trackColor: MaterialStateProperty.resolveWith((states) {
        if(states.contains(MaterialState.disabled)){
          return 
              colorHelper.getColor(GramediaColor.neutral200);
        } else if (states.contains(MaterialState.selected)) {
          return 
              colorHelper.getColor(GramediaColor.neutral700);
        } else {
          return colorHelper.getColor(GramediaColor.neutral500);
        }
      }),
      trackOutlineColor: MaterialStateProperty.resolveWith((states) {
        if(states.contains(MaterialState.disabled)){
          return 
              colorHelper.getColor(GramediaColor.neutral200);
        } else if (states.contains(MaterialState.selected)) {
          return 
              colorHelper.getColor(GramediaColor.neutral700);
        } else {
          return colorHelper.getColor(GramediaColor.neutral500);
        }
      })
    );
  }
}
