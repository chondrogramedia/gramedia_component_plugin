import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:papilus_component_gramedia/Core/Color/Color.dart';
import 'package:papilus_component_gramedia/Core/Spacing/Spacing.dart';
import 'package:papilus_component_gramedia/Core/Typography/Typography.dart';
import 'package:papilus_component_gramedia/Text/GramediaText.dart';

class GramediaCategory extends StatelessWidget {
  final ImageProvider image;
  final String text;
  final Color? color;
  const GramediaCategory(
      {super.key, required this.image, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: 120),
      padding: EdgeInsets.only(left: 4, right: 4),
      height: 48,
      decoration: BoxDecoration(
          border: Border.all(color: GramediaColor.neutral150.valueColor),
          borderRadius: BorderRadius.circular(100)),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: image, fit: BoxFit.cover)),
          ),
          SizedBox(
            width: Spacing.spacing_1.value,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            constraints: const BoxConstraints(minWidth: 48, maxWidth: 120),
            width: 56,
            child: GramediaText(
              text,
              fontStyle: UrbanistFont.mobile_text_2xs_medium,
              color: color ?? GramediaColor.neutral500.valueColor,
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
          )
        ],
      ),
    );
  }
}
