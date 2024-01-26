import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/Core/WidgetSize/WidgetSize.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';
import 'package:papilus_component_gramedia/Text/GramediaText.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class SegmentedCustomView extends StatefulWidget {
  const SegmentedCustomView({super.key});

  @override
  State<SegmentedCustomView> createState() => _SegmentedCustomViewState();
}

class _SegmentedCustomViewState extends State<SegmentedCustomView> {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ScrollOffsetController scrollOffsetController =
      ScrollOffsetController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  final ScrollOffsetListener scrollOffsetListener =
      ScrollOffsetListener.create();
  PageController pageController = PageController(viewportFraction: 0.2);
  List<Size> sizesComponent = [];
  List<String> values = [
    "Chondro",
    "Satrio",
    "Wibowo",
    "Chondro Satrio Wibowo",
    "Chondro SW"
  ];
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double offsetWidth(List<Size> sizes, int index) {
      var valuesDouble = 0.0;
      var i = 1;
      while (i <= index) {
        valuesDouble += sizes[i].width;
        i += 1;
      }
      print("$index with total ${sizes.length - 1}");
      print(index == (sizes.length - 1));
      if (index == 0) {
        return 0;
      } else if (index == (sizes.length - 1)) {
        return valuesDouble -
            (sizes[sizes.length - 1].width +
                (sizes[sizes.length - 1].width / 2));
      } else {
        return (valuesDouble) / 2;
      }
    }

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // SizedBox(
          //   height: 56,
          //   child: ScrollablePositionedList.builder(
          //     physics: AlwaysScrollableScrollPhysics(),
          //     addRepaintBoundaries: false,
          //     scrollDirection: Axis.horizontal,
          //     shrinkWrap: false,
          //     itemCount: values.length,
          //     itemBuilder: (context, index) => InkWell(
          //         onTap: () {

          //           itemScrollController.jumpTo(index: index );
          //         },
          //         child: GramediaText(
          //           values[index],
          //           fontStyle: UrbanistFont.mobile_text_l_extrabold,
          //         )),
          //     itemScrollController: itemScrollController,
          //     scrollOffsetController: scrollOffsetController,
          //     itemPositionsListener: itemPositionsListener,
          //     scrollOffsetListener: scrollOffsetListener,
          //   ),
          // ),
          SizedBox(height: 56,
          
            child: PageView.builder(
              itemCount: values.length,
              padEnds: false,
              pageSnapping: false,
              allowImplicitScrolling: false,
              scrollDirection:  Axis.horizontal,
                controller: pageController,
                itemBuilder: (context, index) {
                  return Container(
                    constraints: BoxConstraints(maxHeight: size.height /4,
            maxWidth: size.width * 0.8,),
                    child: InkWell(
                        onTap: () {
                          pageController.jumpToPage(index);
                        },
                        child: GramediaText(
                          values[index],
                          fontStyle: UrbanistFont.mobile_text_l_extrabold,
                        )),
                  );
                }),
          ),
          SizedBox(
            height: 56,
            child: ListView.builder(
              controller: scrollController,
              itemBuilder: (context, index) {
                return WidgetSize(
                    onChange: (size) {
                      var value = size as Size;
                      if (sizesComponent.length - 1 == values.length - 1) {
                      } else {
                        sizesComponent.add(value);
                      }
                    },
                    child: InkWell(
                        onTap: () {
                          scrollController
                              .jumpTo(offsetWidth(sizesComponent, index));
                        },
                        child: GramediaText(
                          values[index],
                          fontStyle: UrbanistFont.mobile_text_l_extrabold,
                        )));
              },
              itemCount: values.length,
              scrollDirection: Axis.horizontal,
            ),
          )
        ],
      ),
    );
  }
}
