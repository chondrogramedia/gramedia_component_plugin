import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';
import 'package:papilus_component_gramedia/PLP/LoadingCard.dart';

class PLPLoadingCard extends StatelessWidget {
  final String imageUrl;
  final String author;
  final String title;
  final bool? isFavorited;
  final Function()? onTap;
  final Function(bool)? onFavorited;
  final double? progress;
  final String? duration;
  BoxDecoration? decoration;
  PLPLoadingCard(
      {super.key,
      required this.imageUrl,
      required this.author,
      required this.title,
      this.decoration,
      this.isFavorited,
      this.onFavorited,
      this.onTap,
      this.progress,
      this.duration});

  @override
  Widget build(BuildContext context) {
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
                      fit: BoxFit.fitHeight,
                      height: 160,
                      width: 120,
                    );
                  },
                  height: 160,
                  width: 120,
                  fit: BoxFit.fitHeight,
                ),
                SizedBox(
                  height: Spacing.spacing_2.value,
                ),
                LoadingCard(
                  valueLoading: progress,
                  duration: duration,
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
  }
}
