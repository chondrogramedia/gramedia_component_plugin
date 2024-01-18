import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/Core/Color/Color.dart';
import 'package:papilus_component_gramedia/Core/Typography/Typography.dart';

class ColorView extends StatefulWidget {
  const ColorView({super.key});

  @override
  State<ColorView> createState() => _ColorViewState();
}

class _ColorViewState extends State<ColorView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Color"),),
      body: ListView(
        children: List.generate(
            GramediaColor.values.length,
            (index) => Text(
                  "Chondro Ganteng",
                  style: TypographyHelper().getValue(UrbanistFont.mobile_text_s_extrabold, ColorHelper().getColor(
                      GramediaColor.values[index]), false),
                )),
      ),
    );
  }
}