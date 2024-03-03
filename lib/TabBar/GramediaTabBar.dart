import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/Core/Typography/Typography.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';

mixin GramediaTabMixin {}

class GramediaTabController = TabController with GramediaTabMixin;

class GramediaTabBar extends StatelessWidget {
  BoxDecoration? indicator;
  List<Widget> tabs;
  bool isScrollable;
  GramediaColor? colorLabel;
  GramediaTabController? controller;
  GramediaTabBar(
      {required this.tabs,
      this.indicator,
      this.isScrollable = false,
      this.colorLabel,
      this.controller});

  @override
  Widget build(BuildContext context) {
    final typography = TypographyHelper();
    final color = ColorHelper();
    return TabBar(
      controller: controller,
      dividerColor: Colors.transparent,
      tabs: tabs,
      indicator: indicator,
      isScrollable: isScrollable,
      labelStyle: typography.getValue(UrbanistFont.mobile_text_s_medium,
          color.getColor(colorLabel ?? GramediaColor.white), false),
    );
  }
}
