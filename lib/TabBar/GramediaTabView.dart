import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/TabBar/GramediaTabBar.dart';

class GramediaTabView extends StatelessWidget {
  List<Widget> children;
  GramediaTabController? controller;
  GramediaTabView({required this.children,this.controller});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: controller,
      children: children,
    );
  }
}
