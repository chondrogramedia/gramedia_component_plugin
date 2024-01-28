import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/Core/Color/Color.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';
import 'package:papilus_component_gramedia/TabBar/GramediaTabBar.dart';

class TabBarExampleView extends StatefulWidget {
  const TabBarExampleView({super.key});

  @override
  State<TabBarExampleView> createState() => _TabBarExampleViewState();
}

class _TabBarExampleViewState extends State<TabBarExampleView> {
  var currentIndex = 0;
  List<String> values = [
    "Gramedia.com",
    "Gramedia Digital",
    "Eperpus",
    "Gramedia Edukasi"
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return DefaultTabController(
      length: values.length,
      child: Scaffold(
          appBar: AppBar(),
          body: Container(
            child: Column(
              children: [
                Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: GramediaTabBar(
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red),
                      tabs: List.generate(
                          values.length,
                          (index) => GramediaTab(
                              content: GramediaText("${values[index]}",
                                  fontStyle:
                                      UrbanistFont.mobile_text_2xs_extrabold))),
                    )),
                Expanded(
                    child: GramediaTabView(
                  children: List.generate(
                      values.length,
                      (index) => Container(
                            child: Center(
                              child: GramediaText(values[index],
                                  fontStyle:
                                      UrbanistFont.desktop_text_2xl_extrabold),
                            ),
                          )),
                ))
              ],
            ),
          )),
    );
  }
}
