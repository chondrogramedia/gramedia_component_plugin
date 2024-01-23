import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';

class GramediaLoadingIndicator extends StatelessWidget {
  const GramediaLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    var color = ColorHelper();
    return CircularProgressIndicator(color: color.getColor(GramediaColor.white),);
  }
}