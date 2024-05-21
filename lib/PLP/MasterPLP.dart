import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/Core/Spacing/Spacing.dart';
import 'package:papilus_component_gramedia/Core/Typography/Typography.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';
import 'package:papilus_component_gramedia/PLP/PLPHorizontalCard.dart';
import 'package:papilus_component_gramedia/PLP/PLPLoadingCard.dart';
import 'package:papilus_component_gramedia/Text/GramediaText.dart';

enum PLPType { baseCard, durationCard, horizontalCard }

class MasterPLPCard extends StatelessWidget {
  String imageUrl;
  String author;
  String title;
  bool? isFavorited;
  Function()? onTap;
  Function(bool)? onFavorited;
  BoxDecoration? decoration;
  PLPType? type;
  String? duration;
  double? progress;
  MasterPLPCard(
      {super.key,
      required this.imageUrl,
      required this.author,
      required this.title,
      this.decoration,
      this.isFavorited,
      this.onFavorited,
      this.onTap,
      this.type = PLPType.baseCard,
      this.duration,
      this.progress});

  Widget card(PLPType valueType) {
    switch (valueType) {
      case PLPType.baseCard:
        return GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: decoration,
            width: 136,
            height: 250,
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
                          package: "papilus_component_gramedia",
                          fit: BoxFit.fitWidth,
                          height: 160,
                          width: 120,
                        );
                      },
                      height: 160,
                      width: 120,
                      fit: BoxFit.fitWidth,
                    ),
                    SizedBox(
                      height: Spacing.spacing_2.value,
                    ),
                    GramediaText(
                      author,
                      fontStyle: UrbanistFont.mobile_text_2xs_medium,
                      color: GramediaColor.neutral500.valueColor,
                      textAlign: TextAlign.left,
                      maxLines: 1,
                    ),
                    GramediaText(
                      title,
                      fontStyle: UrbanistFont.mobile_text_xs_medium,
                      color: GramediaColor.neutral700.valueColor,
                      textAlign: TextAlign.left,
                      maxLines: 2,
                    ),
                    SizedBox(
                      height: Spacing.spacing_1.value,
                    ),
                    Row(
                      children: [
                        Icon(
                          FluentIcons.star_16_filled,
                          color: GramediaColor.yellow500.valueColor,
                          size: 16,
                        ),
                        SizedBox(
                          width: Spacing.spacing_1.value,
                        ),
                        GramediaText(
                          "5.0",
                          fontStyle: UrbanistFont.mobile_text_2xs_medium,
                          color: GramediaColor.neutral500.valueColor,
                          textAlign: TextAlign.justify,
                          maxLines: 1,
                        ),
                      ],
                    )
                  ],
                ),
                onTap == null
                    ? Container(
                        color: GramediaColor.white.valueColor.withOpacity(0.4),
                      )
                    : const SizedBox(),
                Positioned(
                    top: 0,
                    right: 0,
                    child: IconButton(
                        onPressed: () {
                          onFavorited!(!isFavorited!);
                        },
                        icon: Stack(
                          alignment: Alignment.center,
                          children: [
                            Icon(
                              FluentIcons.heart_16_filled,
                              color: GramediaColor.neutral500.valueColor,
                            ),
                            Icon(
                              isFavorited == true
                                  ? FluentIcons.heart_16_filled
                                  : FluentIcons.heart_16_regular,
                              color: GramediaColor.red500.valueColor,
                            ),
                          ],
                        )))
              ],
            ),
          ),
        );
      case PLPType.durationCard:
        return PLPLoadingCard(
          imageUrl: imageUrl,
          author: author,
          title: title,
          duration: duration,
          progress: progress,
        );
      case PLPType.horizontalCard:
        return PLPHorizontalCard(
          imageUrl: imageUrl,
          title: title,
          author: author,
          borrowedDate: duration,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return card(type ?? PLPType.baseCard);
  }
}
