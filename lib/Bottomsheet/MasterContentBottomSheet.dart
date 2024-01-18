import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:papilus_component_gramedia/Core/Color/Color.dart';
import 'package:papilus_component_gramedia/Core/Spacing/Spacing.dart';
import 'package:papilus_component_gramedia/Core/Typography/Typography.dart';

class MasterContentBottomSheet extends StatelessWidget {
  Widget image;
  String title;
  String description;
  MasterContentBottomSheet(
      {required this.image, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    var typograph = TypographyHelper();
    var color = ColorHelper();
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          image,
          SizedBox(
            height: SpacingHelper().getvalue(Spacing.spacing_4),
          ),
          Text(
            title,
            style: typograph.getValue(UrbanistFont.mobile_text_l_extrabold,
                color.getColor(GramediaColor.neutral700), false),
          ),
          SizedBox(
            height: SpacingHelper().getvalue(Spacing.spacing_1),
          ),
          Text(description)
        ],
      ),
    );
  }
}
