import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:papilus_component_gramedia/Core/Color/Color.dart';
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
      padding: EdgeInsets.only(left: 4, right: 12),
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Container(
              constraints: const BoxConstraints(minWidth: 60, maxWidth: 120),
              child: GramediaText(
                text,
                fontStyle: UrbanistFont.mobile_text_2xs_medium,
                color: color ?? GramediaColor.neutral500.valueColor,
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
