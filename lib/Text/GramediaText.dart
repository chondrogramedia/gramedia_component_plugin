import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/Core/Typography/Typography.dart';

class GramediaText extends StatelessWidget {
  String value;
  UrbanistFont fontStyle;
  Color? color;
  bool isUndlerlined;
  TextAlign? textAlign;
  int? maxLines;
  GramediaText(this.value,
      {required this.fontStyle,
      this.color,
      this.isUndlerlined = false,
      this.textAlign = TextAlign.center,
      this.maxLines = 3});

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: TypographyHelper()
          .getValue(fontStyle, color ?? Colors.black, isUndlerlined),
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
    );
  }
}
