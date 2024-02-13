import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';

class TabBarListView extends StatefulWidget {
  const TabBarListView({super.key});

  @override
  State<TabBarListView> createState() => _TabBarListViewState();
}

class _TabBarListViewState extends State<TabBarListView> {
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
                      isScrollable: true,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red),
                      tabs: List.generate(
                          values.length,
                          (index) => GramediaTab(
                              content: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(FluentIcons.book_24_filled,color: Colors.black,),
                                  GramediaText("${values[index]}",
                                      fontStyle:
                                          UrbanistFont.mobile_text_2xs_extrabold),
                                ],
                              ))),
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