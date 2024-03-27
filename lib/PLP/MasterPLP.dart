import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/Core/Spacing/Spacing.dart';
import 'package:papilus_component_gramedia/Core/Typography/Typography.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';
import 'package:papilus_component_gramedia/Text/GramediaText.dart';

class MasterPLPCard extends StatelessWidget {
  String imageUrl;
  String author;
  String title;
  Widget? content;
  BoxDecoration? decoration;
  MasterPLPCard(
      {super.key,
      required this.imageUrl,
      required this.author,
      required this.title,
      this.content,
      this.decoration});

  @override
  Widget build(BuildContext context) {
    final spacing = SpacingHelper();
    final color = ColorHelper();
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: decoration,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.network(
                imageUrl,
                errorBuilder: (context, error, stackTrace) {
                  return Image.asset(
                    "assets/image-2.png",
                    fit: BoxFit.fitWidth,
                  );
                },
                height: 160,
                width: 120,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: spacing.getvalue(Spacing.spacing_2),
              ),
              GramediaText(
                author,
                fontStyle: UrbanistFont.mobile_text_2xs_medium,
                color: color.getColor(GramediaColor.neutral500),
                textAlign: TextAlign.justify,
              ),
              GramediaText(
                title,
                fontStyle: UrbanistFont.mobile_text_xs_medium,
                color: color.getColor(GramediaColor.neutral700),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: spacing.getvalue(Spacing.spacing_1),
              ),
              Row(
                children: [
                  Icon(
                    FluentIcons.star_16_filled,
                    color: GramediaColor.yellow500.valueColor,
                    size: 16,
                  ),
                  SizedBox(
                    width: spacing.getvalue(Spacing.spacing_1),
                  ),
                  GramediaText(
                    "5.0",
                    fontStyle: UrbanistFont.mobile_text_2xs_medium,
                    color: color.getColor(GramediaColor.neutral500),
                    textAlign: TextAlign.justify,
                  ),
                ],
              )
            ],
          ),
          Positioned(
              top: 4,
              right: 4,
              child: GramediaIconButton(
                  icon: ColorFiltered(
                colorFilter: ColorFilter.mode(
                    GramediaColor.red500.valueColor, BlendMode.srcATop),
                child: Image.asset(
                  "assets/icons/heart_outlined/image.png",
                  package: "papilus_component_gramedia",
                ),
              )))
        ],
      ),
    );
  }
}
