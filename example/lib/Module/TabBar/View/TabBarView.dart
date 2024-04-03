import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';
import 'package:papilus_component_gramedia_example/Module/Home/View/HomeView.dart';
import 'package:papilus_component_gramedia_example/Module/Search/View/SearchView.dart';
import 'package:papilus_component_gramedia_example/main.dart';

class TabBarProductView extends StatefulWidget {
  const TabBarProductView({super.key});

  @override
  State<TabBarProductView> createState() => _TabBarProductViewState();
}

class _TabBarProductViewState extends State<TabBarProductView> with Navigation {
  var currentIndexTab = 0;
  List<IconData> selectedIcons = [
    FluentIcons.home_16_filled,
    FluentIcons.search_16_filled,
    FluentIcons.library_16_filled
  ];

  List<IconData> unSelectedIcons = [
    FluentIcons.home_16_regular,
    FluentIcons.search_16_regular,
    FluentIcons.library_16_regular
  ];

  List<String> titleTab = ["Home", "Pencarian", "Rak"];

  Widget content(int index) {
    switch (index) {
      case 0:
        return const HomeView();
      case 1:
        return const SearchView();
      case 2:
        return Container();
      default:
        return Container();
    }
  }

  PreferredSizeWidget? appbar(int index) {
    switch (index) {
      case 0:
        return AppBar(
          title: GramediaText("Selamat Membaca, Chondro",
              fontStyle: UrbanistFont.mobile_text_l_extrabold),
          centerTitle: false,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Badge.count(
                    count: 5, child: Icon(FluentIcons.alert_12_regular))),
            IconButton(
                onPressed: () {
                  go(context, page: TestingView());
                },
                icon: Icon(FluentIcons.line_horizontal_3_20_filled)),
          ],
        );
      case 1:
        return null;
      case 2:
        return AppBar(
          title: GramediaText("Selamat Membaca, Chondro",
              fontStyle: UrbanistFont.mobile_text_l_extrabold),
          centerTitle: false,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Badge.count(
                    count: 5, child: Icon(FluentIcons.alert_12_regular))),
            IconButton(
                onPressed: () {},
                icon: Icon(FluentIcons.line_horizontal_3_20_filled)),
          ],
        );
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appbar(currentIndexTab),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            width: size.width,
            height: size.height,
            child: content(currentIndexTab),
          ),
          GramediaNavigationBar(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1000), color: Colors.white),
            count: 3,
            currentIndex: currentIndexTab,
            onTap: (index) {
              setState(() {
                currentIndexTab = index;
              });
            },
            builder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ShaderMask(
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (Rect bounds) => LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: currentIndexTab == index
                          ? [
                              GramediaColor.brand500.valueColor
                                  .withOpacity(0.5),
                              GramediaColor.brand500.valueColor.withOpacity(0)
                            ]
                          : [
                              GramediaColor.neutral500.valueColor,
                              GramediaColor.neutral500.valueColor,
                            ], // Gradient colors for the icon
                    ).createShader(bounds),
                    child: Icon(
                      currentIndexTab == index
                          ? selectedIcons[index]
                          : unSelectedIcons[index],
                      color: currentIndexTab == index
                          ? GramediaColor.brand500.valueColor
                          : GramediaColor.neutral500.valueColor,
                    ),
                  ),
                  GramediaText(
                    titleTab[index],
                    fontStyle: UrbanistFont.mobile_text_2xs_medium,
                    color: GramediaColor.neutral500.valueColor,
                  )
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
