import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/Core/Color/Color.dart';
import 'package:papilus_component_gramedia/Core/Radius/Radius.dart';
import 'package:papilus_component_gramedia/Core/Typography/Typography.dart';
import 'package:papilus_component_gramedia/Text/GramediaText.dart';

class SegmentedControlled extends StatefulWidget {
  Widget Function(int) builder;
  Function(int) onTapIndex;
  int length;
  int currentIndex;
  Color colorCurrent;
  Color colorBackground;
  SegmentedControlled(
      {super.key,
      required this.builder,
      required this.currentIndex,
      required this.length,
      required this.onTapIndex,
      required this.colorCurrent,
      required this.colorBackground});

  @override
  State<SegmentedControlled> createState() => _SegmentedControlledState();
}

class _SegmentedControlledState extends State<SegmentedControlled>
    with SingleTickerProviderStateMixin {
  var indexValue = 0;
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    var colorHelper = ColorHelper();
    var radiusHelper = RadiusHelper();
    var size = MediaQuery.of(context).size;
    return widget.length * 72 > size.width
        ? SizedBox(
            height: 48,
            child: ListView(
              controller: scrollController,
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: widget.length * 72,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        radiusHelper.radius(RadiusCase.radius_infinity)),
                    color: widget.colorBackground,
                  ),
                  height: 48,
                  child: Stack(
                    children: [
                      AnimatedPositioned(
                        top: 0,
                        left: widget.currentIndex * 72,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                        child: Container(
                          width: 72,
                          height: 48,
                          decoration: BoxDecoration(
                              color: widget.colorCurrent,
                              borderRadius: BorderRadius.circular(radiusHelper
                                  .radius(RadiusCase.radius_infinity))),
                        ),
                      ),
                      Row(
                        children: List.generate(widget.length, (index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                scrollController.animateTo(widget.currentIndex < index ? - (widget.currentIndex * 72 - size.width) : widget.currentIndex * 72 - size.width, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
                                widget.onTapIndex(index);
                              });
                            },
                            child: SizedBox(
                              width: 72,
                              height: 48,
                              child: widget.builder(index),
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        : Center(
            child: Container(
              width: widget.length * 72,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                    radiusHelper.radius(RadiusCase.radius_infinity)),
                color: widget.colorBackground,
              ),
              height: 48,
              child: Stack(
                children: [
                  AnimatedPositioned(
                    top: 0,
                    left: widget.currentIndex * 72,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                    child: Container(
                      width: 72,
                      height: 48,
                      decoration: BoxDecoration(
                          color: widget.colorCurrent,
                          borderRadius: BorderRadius.circular(
                              radiusHelper.radius(RadiusCase.radius_infinity))),
                    ),
                  ),
                  Row(
                    children: List.generate(widget.length, (index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            widget.onTapIndex(index);
                          });
                        },
                        child: SizedBox(
                          width: 72,
                          height: 48,
                          child: widget.builder(index),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          );
  }
}
