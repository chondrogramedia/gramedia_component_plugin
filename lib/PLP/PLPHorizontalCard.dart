import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:papilus_component_gramedia/Core/Spacing/Spacing.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';

class PLPHorizontalCard extends StatelessWidget {
  final String imageUrl;
  final String? borrowedDate;
  final String? title;
  final String? author;
  final String? date;
  final Function()? onPressed;
  const PLPHorizontalCard(
      {super.key,
      required this.imageUrl,
      this.borrowedDate,
      this.author,
      this.title,
      this.date,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.only(left: 16, right: 16, top: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.network(
                    imageUrl,
                    errorBuilder: (context, error, stackTrace) {
                      return Image.asset(
                        "assets/image-2.png",
                        package: "papilus_component_gramedia",
                        fit: BoxFit.fitHeight,
                        height: 140,
                        width: 90,
                      );
                    },
                    height: 140,
                    width: 90,
                    fit: BoxFit.fitHeight,
                  ),
                  SizedBox(
                    width: Spacing.spacing_6.value,
                  ),
                  Expanded(
                    flex: 7,
                    child: SizedBox(
                      height: 140,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GramediaText(
                              author ?? "",
                              fontStyle: UrbanistFont.mobile_text_2xs_medium,
                              color: GramediaColor.neutral500.valueColor,
                            ),
                            GramediaText(
                              title ?? "",
                              fontStyle: UrbanistFont.mobile_text_xs_extrabold,
                              color: GramediaColor.neutral700.valueColor,
                            ),
                            SizedBox(
                              height: Spacing.spacing_2.value,
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
                                  fontStyle:
                                      UrbanistFont.mobile_text_2xs_medium,
                                  color: GramediaColor.neutral500.valueColor,
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: Spacing.spacing_2.value,
                            ),
                            date != null
                                ? GramediaLabelWidget(
                                    message: date ?? "",
                                    foregroundColor:
                                        GramediaColor.brand500.valueColor,
                                    backgroundColor:
                                        GramediaColor.brand50.valueColor,
                                  )
                                : const SizedBox(
                                    height: 0,
                                  ),
                            SizedBox(
                              height: Spacing.spacing_2.value,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(FluentIcons.heart_16_regular),
                                )
                              ],
                            ),
                          ]),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: Spacing.spacing_4.value,
              ),
              Divider(
                thickness: 1.0,
                color: GramediaColor.neutral150.valueColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
