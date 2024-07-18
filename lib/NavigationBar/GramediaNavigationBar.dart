import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:papilus_component_gramedia/Core/Color/Color.dart';
import 'package:papilus_component_gramedia/Core/WidgetSize/WidgetSize.dart';
import 'package:papilus_component_gramedia/NavigationBar/PanelNavigationAnimation.dart';
import 'package:papilus_component_gramedia/SegmentedControlled/PanelAnimation.dart';

class GramediaNavigationBar extends StatefulWidget {
  int count;
  BoxDecoration? decoration;
  EdgeInsets? padding;
  EdgeInsets? margin;
  double? height;
  Widget Function(BuildContext context, int index)? builder;
  Function(int index)? onTap;
  int currentIndex;
  Color? color;
  GramediaNavigationBar(
      {required this.count,
      this.height,
      this.decoration,
      this.padding,
      this.builder,
      this.onTap,
      required this.currentIndex,
      this.color,
      this.margin});

  @override
  State<GramediaNavigationBar> createState() => _GramediaNavigationBarState();
}

class _GramediaNavigationBarState extends State<GramediaNavigationBar> {
  Size? size;
  var valueIndex = 0;
  var isDelayed = false;
  var moveOffset = false;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  void didUpdateWidget(covariant GramediaNavigationBar oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    if (widget.currentIndex != oldWidget.currentIndex) {
      setState(() {
        isDelayed = true;
      });
      Future.delayed(Duration(milliseconds: 200)).then((value) {
        setState(() {
          isDelayed = !isDelayed;
          valueIndex = widget.currentIndex;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var colorHelper = ColorHelper();
    return Container(
      height: widget.height ?? 64,
      padding: widget.padding,
      decoration: widget.decoration,
      margin: widget.margin,
      child: Stack(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: List.generate(
                widget.count,
                (index) => WidgetSize(
                      onChange: (sizeChange) {
                        setState(() {
                          size = sizeChange;
                        });
                      },
                      child: Expanded(
                        child: TextButton(
                          onPressed: () async {
                            widget.onTap!(index);
                            setState(() {
                              isDelayed = true;
                            });
                            Future.delayed(Duration(milliseconds: 200))
                                .then((value) {
                              setState(() {
                                isDelayed = !isDelayed;
                                valueIndex = index;
                              });
                            });
                          },
                          child: widget.builder!(context, index),
                        ),
                      ),
                    )),
          ),
          PanelNavigationAnimation(
              offset: widget.currentIndex < valueIndex
                  ? (size?.width ?? 100) * (widget.currentIndex)
                  : (size?.width ?? 100) * (valueIndex),
              width: isDelayed
                  ? (size?.width ?? 100) *
                      ((widget.currentIndex - valueIndex).abs() + 1)
                  : (size?.width ?? 100),
              height: size?.height ?? 100,
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                          width: 3,
                          color: widget.color ??
                              GramediaColor.brand500.valueColor)),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12)),
                  gradient: LinearGradient(colors: [
                    colorHelper
                        .getColor(GramediaColor.brand600)
                        .withOpacity(0.1),
                    Colors.transparent,
                    Colors.transparent,
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              hasTouch: widget.currentIndex == valueIndex,
              duration: Duration(milliseconds: 100),
              curve: Curves.easeIn)
        ],
      ),
    );
  }
}
