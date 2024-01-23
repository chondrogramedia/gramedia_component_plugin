import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/Core/Radius/Radius.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';

class RadiusView extends StatefulWidget {
  const RadiusView({super.key});

  @override
  State<RadiusView> createState() => _RadiusViewState();
}

class _RadiusViewState extends State<RadiusView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GramediaText(
          "Radius",
          fontStyle: UrbanistFont.mobile_text_l_extrabold,
          color: Colors.white,
        ),
      ),
      body: ListView(
        children: List.generate(
            RadiusCase.values.length,
            (index) => Container(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 160,
                        height: 160,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(RadiusHelper()
                                .radius(RadiusCase.values[index]))),
                      ),
                      Text(
                          "${RadiusHelper().radius(RadiusCase.values[index])}px")
                    ],
                  ),
                )),
      ),
    );
  }
}
