import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/Checkbox/GramediaCheckbox.dart';
import 'package:papilus_component_gramedia/Core/Typography/Typography.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';
import 'package:papilus_component_gramedia/Text/GramediaText.dart';

class CheckboxList extends StatefulWidget {
  const CheckboxList({super.key});

  @override
  State<CheckboxList> createState() => _CheckboxListState();
}

class _CheckboxListState extends State<CheckboxList> {
  bool? isSelected = false;
  bool isValue = false;
  var helper = ColorHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GramediaText("Kamu single?",
                  fontStyle: UrbanistFont.mobile_text_m_extrabold),
              GramediaCheckbox(
                value: isSelected,
                tristate: true,
                onChanged: (p0) {
                  setState(() {
                    isSelected = p0;
                  });
                },
                fillColor: Colors.pink,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GramediaText("Kamu nggk single?",
                  fontStyle: UrbanistFont.mobile_text_m_extrabold),
              GramediaCheckbox(
                value: isSelected,
                tristate: true,
                onChanged: 
                null,
                fillColor: Colors.pink,
              )
            ],
          ),
        ],
      ),
    );
  }
}
