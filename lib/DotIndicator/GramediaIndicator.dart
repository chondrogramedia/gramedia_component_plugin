import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';

class GramediaDotIndicator extends StatelessWidget {
  final Axis? direction;
  final double? sizeActive;
  final double? sizeInActive;
  final BoxDecoration? selectedDecoration;
  final BoxDecoration? unSelectedDecoration;
  final int currentIndex;
  final int length;
  final Function(int) onChanged;
  final double? spaceDot;
  final MainAxisAlignment? mainAxisAlignment;
  const GramediaDotIndicator(
      {super.key,
      this.direction = Axis.horizontal,
      this.sizeActive = 8,
      this.sizeInActive = 8,
      this.selectedDecoration,
      this.unSelectedDecoration,
      this.mainAxisAlignment,
      required this.currentIndex,
      required this.length,
      required this.onChanged,
      this.spaceDot});

  Widget indicatorWidget(bool isSelected) {
    return AnimatedContainer(
        width: isSelected ? sizeActive : sizeInActive,
        height: isSelected ? sizeActive : sizeInActive,
        duration: const Duration(milliseconds: 500),
        decoration: isSelected ? selectedDecoration : unSelectedDecoration);
  }

  @override
  Widget build(BuildContext context) {
    if (direction == Axis.horizontal) {
      return Row(
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: List.generate(
            length,
            (index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: spaceDot ?? 4),
                  child: GestureDetector(
                    onTap: () {
                      onChanged(index);
                    },
                    child: indicatorWidget(index == currentIndex),
                  ),
                )),
      );
    } else {
      return Column(
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: List.generate(
            length,
            (index) => Padding(
                  padding: EdgeInsets.symmetric(vertical: spaceDot ?? 4),
                  child: GestureDetector(
                    onTap: () {
                      onChanged(index);
                    },
                    child: indicatorWidget(index == currentIndex),
                  ),
                )),
      );
    }
  }
}
