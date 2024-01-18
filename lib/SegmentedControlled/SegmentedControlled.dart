import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/Core/Color/Color.dart';
import 'package:papilus_component_gramedia/Core/Radius/Radius.dart';
import 'package:papilus_component_gramedia/Core/Typography/Typography.dart';
import 'package:papilus_component_gramedia/Text/GramediaText.dart';

class SegmentedControlled extends StatefulWidget {
  const SegmentedControlled({super.key});

  @override
  State<SegmentedControlled> createState() => _SegmentedControlledState();
}

class _SegmentedControlledState extends State<SegmentedControlled>
    with SingleTickerProviderStateMixin {
  var indexValue = 0;
  @override
  Widget build(BuildContext context) {
    var colorHelper = ColorHelper();
    var radiusHelper = RadiusHelper();
    return Container(
      decoration: BoxDecoration(
        color: colorHelper.getColor(GramediaColor.neutral500),
      ),
      height: 48,
      child: Stack(
        children: [
          AnimatedPositioned(
            top: 0,
            left: indexValue * 72,
            duration: Duration(milliseconds: 500),
            curve: Curves.linearToEaseOut,
            child: Container(
              width: 72,
              height: 48,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(
                      radiusHelper.radius(RadiusCase.radius_infinity))),
            ),
          ),
          Row(
            children: List.generate(
              4,
              (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    indexValue = index;
                  });
                },
                child: Container(
                  width: 72,
                  child: Center(
                    child: GramediaText(
                      "Button",
                      fontStyle: UrbanistFont.mobile_text_s_extrabold,
                      color: colorHelper.getColor(GramediaColor.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
