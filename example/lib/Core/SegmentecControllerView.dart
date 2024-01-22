import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';
import 'package:papilus_component_gramedia/SegmentedControlled/SegmentedControlled.dart';
import 'package:papilus_component_gramedia/SegmentedControlled/SegmentedSettings.dart';
import 'package:papilus_component_gramedia/SegmentedControlled/SegmentedWidget.dart';

class SegmentedControllerView extends StatefulWidget {
  const SegmentedControllerView({super.key});

  @override
  State<SegmentedControllerView> createState() =>
      _SegmentedControllerViewState();
}

class _SegmentedControllerViewState extends State<SegmentedControllerView> {
  var currentIndex = 0;
  var listviewKey = GlobalKey();
  ScrollController scrollController = ScrollController();
  List<Color> colors = [
    Colors.black,
    Colors.green,
    Colors.black,
    Colors.green,
    Colors.black,
    Colors.green
  ];
  // List<Map<String, Widget>> icons = [
  //   {"1": Icon(Icons.abc)},
  //   {"2": Icon(Icons.ac_unit_outlined)},
  //   {"3": Icon(Icons.ac_unit)},
  //   {"4": Icon(Icons.access_alarm)},
  //   {"5": Icon(Icons.access_alarm)},
  //   {"5": Icon(Icons.access_alarm)},
  // ];

  /// hanya bisa 1 component
  @override
  Widget build(BuildContext context) {
    var colorHelper = ColorHelper();
    var radiusHelper = RadiusHelper();
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // SizedBox(
            //   height: 40,
            //   child: ListView(
            //     physics: AlwaysScrollableScrollPhysics(),
            //     controller: scrollController,
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       GramediaSegmentedWidget<int>(
            //           customSegmentSettings:
            //               SegmentedSettings(highlightColor: Colors.blue),
            //           curve: Curves.easeIn,
            //           initialValue: currentIndex,
            //           children: {
            //             0: Text("Chondro"),
            //             1: Row(
            //               children: [Icon(Icons.abc), Text("Chondro Ganteng")],
            //             ),
            //             2: Text("Chondro"),
            //             3: Row(
            //               children: [Icon(Icons.abc), Text("Chondro Ganteng")],
            //             ),
            //             4: Row(
            //               children: [Icon(Icons.abc), Text("Chondro Ganteng")],
            //             )
            //           },
            //           onValueChanged: (value) {
            //             // setState(() {
            //             //   currentIndex = value;
            //             // });
            //             //scrollController.jumpTo(value)
            //           }, onOffsetScroll: (index, value) {
            //             var width = size.width;

            //             setState(() {
            //               currentIndex = index;
            //             });
            //           },)
            //     ],
            //   ),
            // ),
            GramediaSegmentedWidget<int>(
              thumbDecoration: BoxDecoration(
                color: Colors.blue,
                  borderRadius: BorderRadius.circular(12)
              ),
              isStretch: true,
              customSegmentSettings: SegmentedSettings(
                  highlightColor: Colors.blue,
                  borderRadius: BorderRadius.circular(12)),
              curve: Curves.easeIn,
              initialValue: currentIndex,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(12)),
              children: {
                0: Text("Chondro"),
                1: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.abc), Text("Chondro Ganteng")],
                ),
              },
              onValueChanged: (value) {
                //scrollController.jumpTo(value)
              },
              onOffsetScroll: (index, value) {
                setState(() {
                  currentIndex = index;
                });
              },
            )

            // Container(
            //   height: 48,
            //   margin: EdgeInsets.symmetric(horizontal: 24),
            //   color: colorHelper.getColor(GramediaColor.neutral600),
            //   child: Stack(
            //     alignment: Alignment.center,
            //     children: [
            //       AnimatedPositioned(
            //         top: 0,
            //         left: currentIndex == 0 ? currentIndex * (size.width / colors.length) : currentIndex * (size.width / colors.length) - (8 * (currentIndex - 1)) ,
            //         duration: Duration(milliseconds: 500),
            //         curve: Curves.easeIn,
            //         child: Container(
            //           width: (size.width / colors.length) - 6,

            //           height: 48,
            //           decoration: BoxDecoration(
            //               color: Colors.blue,
            //               borderRadius: BorderRadius.circular(
            //                   radiusHelper.radius(RadiusCase.radius_infinity))),
            //         ),
            //       ),
            //       SizedBox(

            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: List.generate(
            //               colors.length,
            //               (index) => Expanded(
            //                     child: GestureDetector(
            //                       onTap: () {
            //                         setState(() {
            //                           currentIndex = index;
            //                         });
            //                       },
            //                       child: Container(
            //                         color: Colors.black.withOpacity(0),
            //                         child: Center(
            //                             child: Text(
            //                           "Color",
            //                           style: TextStyle(color: Colors.white),
            //                         )),
            //                       ),
            //                     ),
            //                   )),
            //         ),
            //       ),
            //     ],
            //   ),
            // )
            // SegmentedControlled(
            //   colorCurrent: Colors.pink,
            //   colorBackground: Colors.black87,
            //   currentIndex: currentIndex,
            //   length: icons.length,
            //   onTapIndex: (p0) {
            //     setState(() {
            //       currentIndex = p0;
            //     });
            //   },
            //   builder: (p0) {
            //     return Center(
            //         child: GramediaText("Mencoba",
            //             fontStyle: UrbanistFont.mobile_text_2xs_extrabold));
            //   },
            // )
          ],
        ),
      ),
    );
  }
}
