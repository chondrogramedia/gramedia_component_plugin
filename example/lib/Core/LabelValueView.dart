import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';

class LabelValueView extends StatefulWidget {
  const LabelValueView({super.key});

  @override
  State<LabelValueView> createState() => _LabelValueViewState();
}

class _LabelValueViewState extends State<LabelValueView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GramediaLabel(
          value: "Chondro",
          icon: FluentIcons.person_16_filled,
        ),
      ),
    );
  }
}
