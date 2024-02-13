import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/Core/Color/Color.dart';
import 'package:papilus_component_gramedia/Core/Spacing/Spacing.dart';
import 'package:papilus_component_gramedia/Core/Typography/Typography.dart';
import 'package:papilus_component_gramedia/Text/GramediaText.dart';

class MasterBottomSheet extends StatelessWidget {
  List<Widget> children;
  MasterBottomSheet({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    var colorHelper = ColorHelper();
    return Container(
      padding: const EdgeInsets.only( top: 8,left: 16,bottom: 16,right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: children,
      ),
    );
  }
}
