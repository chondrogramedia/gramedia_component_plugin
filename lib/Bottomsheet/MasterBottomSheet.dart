import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/Core/Color/Color.dart';
import 'package:papilus_component_gramedia/Core/Spacing/Spacing.dart';
import 'package:papilus_component_gramedia/Core/Typography/Typography.dart';
import 'package:papilus_component_gramedia/Text/GramediaText.dart';

class MasterBottomSheet extends StatelessWidget {
  const MasterBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var colorHelper = ColorHelper();
    return Container(
      padding: EdgeInsets.all( 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 8,
            fit: FlexFit.tight,
            child: SizedBox(
              height: 44,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                          colorHelper.getColor(GramediaColor.brand500)),
                  onPressed: () {},
                  child: GramediaText(
                    "Button",
                    fontStyle: UrbanistFont.mobile_text_s_extrabold,
                    color: colorHelper.getColor(GramediaColor.white),
                  )),
            ),
          ),
          Flexible(
            flex: 1,
            child: SizedBox(
              height: SpacingHelper().getvalue(Spacing.spacing_1),
            ),
          ),
          Flexible(
            flex: 8,
            fit: FlexFit.tight,
            child: SizedBox(
              height: 44,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                          colorHelper.getColor(GramediaColor.brand500)),
                  onPressed: () {},
                  child: GramediaText(
                    "Button",
                    fontStyle: UrbanistFont.mobile_text_s_extrabold,
                    color: colorHelper.getColor(GramediaColor.white),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
