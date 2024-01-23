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
  MasterPLPCard({super.key, required this.imageUrl, required this.author,required this.title, this.content});

  @override
  Widget build(BuildContext context) {
    final spacing = SpacingHelper();
    final color = ColorHelper();
    return Container(
      padding: EdgeInsets.all(spacing.getvalue(Spacing.spacing_4)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(imageUrl,errorBuilder: (context, error, stackTrace) {
            return Image.asset("assets/image-2.png",fit: BoxFit.cover,);
          },height: 160,),
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
          content != null ? SizedBox(
            height: spacing.getvalue(Spacing.spacing_2),
          ) : const SizedBox(),
          content ?? const SizedBox()
        ],
      ),
    );
  }
}
