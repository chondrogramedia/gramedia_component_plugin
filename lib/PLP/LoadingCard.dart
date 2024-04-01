import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';

class LoadingCard extends StatelessWidget {
  final double? valueLoading;
  final String? duration;
  const LoadingCard({super.key, this.valueLoading, this.duration});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GramediaText(
              "${((valueLoading ?? 0.0) * 100).ceil()}%",
              fontStyle: UrbanistFont.mobile_text_2xs_medium,
              color: GramediaColor.neutral700.valueColor,
            ),
            SizedBox(
              width: Spacing.spacing_1.value,
            ),
            Expanded(
              child: LinearProgressIndicator(
                value: valueLoading,
                color: GramediaColor.accent500.valueColor,
                backgroundColor: GramediaColor.neutral200.valueColor,
                borderRadius:
                    BorderRadius.circular(RadiusCase.radius_infinity.value),
              ),
            )
          ],
        ),
        SizedBox(
          height: Spacing.spacing_1.value,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              FluentIcons.clock_12_regular,
              size: 12,
            ),
            SizedBox(
              width: Spacing.spacing_1.value,
            ),
            GramediaText(duration ?? "0 seconds",
                fontStyle: UrbanistFont.mobile_text_2xs_medium)
          ],
        )
      ],
    );
  }
}
