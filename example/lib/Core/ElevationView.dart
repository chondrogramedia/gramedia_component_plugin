import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';

class ElevationView extends StatefulWidget {
  const ElevationView({super.key});

  @override
  State<ElevationView> createState() => _ElevationViewState();
}

class _ElevationViewState extends State<ElevationView> {
  @override
  Widget build(BuildContext context) {
    var elevetion = ElevationHelper();
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 24,vertical: 8),
            height: 120,
            child: Center(
              child: GramediaText("Elevation ${index + 1}}",
                  fontStyle: UrbanistFont.mobile_text_2xs_extrabold),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
                boxShadow:
                    elevetion.get(elevation: ElevationCase.values[index])),
          );
        },
        itemCount: ElevationCase.values.length,
      ),
    );
  }
}
