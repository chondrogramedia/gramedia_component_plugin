import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/Core/Typography/Typography.dart';

class TypographyView extends StatefulWidget {
  const TypographyView({super.key});

  @override
  State<TypographyView> createState() => _TypographyViewState();
}

class _TypographyViewState extends State<TypographyView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Typograph"),),
      body: ListView(
        children: List.generate(
            UrbanistFont.values.length,
            (index) => Text(
                  "Chondro Ganteng",
                  style: TypographyHelper().getValue(
                      UrbanistFont.values[index], Colors.black, false),
                )),
      ),
    );
  }
}
