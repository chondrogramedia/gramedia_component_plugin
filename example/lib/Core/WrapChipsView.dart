import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';

class WrapChipsView extends StatefulWidget {
  const WrapChipsView({super.key});

  @override
  State<WrapChipsView> createState() => _WrapChipsViewState();
}

class _WrapChipsViewState extends State<WrapChipsView> {
  List<String> texts = [
    "Chondro",
    "Chondro Satrio Wibowo",
    "Chondro Ganteng",
    "Chondro Ganteng, Tapi Bohong",
    "Chondro sebenarnya tampang"
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var colorHelper = ColorHelper();
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          GramediaText("$currentIndex",
              fontStyle: UrbanistFont.mobile_text_l_medium),
          // Wrap(
          //   children: List.generate(
          //       5,
          //       (index) => GramediaChips(
          //             onPressed: () {
          //               setState(() {
          //                 currentIndex = index;
          //               });
          //             },
          //             backgroundColor: currentIndex != index
          //                 ? GramediaColor.neutral50
          //                 : GramediaColor.brand700,
          //             foregroundColor: currentIndex != index
          //                 ? GramediaColor.neutral200
          //                 : GramediaColor.white,
          //             child: GramediaText(
          //               "$index",
          //               fontStyle: UrbanistFont.mobile_text_l_medium,
          //               color: colorHelper.getColor(
          //                 currentIndex != index
          //                     ? GramediaColor.neutral200
          //                     : GramediaColor.white,
          //               ),
          //             ),
          //           )),
          // ),
          Wrap(
            spacing: 4.0,
            children: List.generate(
                texts.length,
                (index) => GramediaChips(
                      onPressed: () {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      backgroundColor: currentIndex != index
                          ? GramediaColor.neutral50
                          : GramediaColor.brand700,
                      foregroundColor: currentIndex != index
                          ? GramediaColor.neutral200
                          : GramediaColor.white,
                      child: GramediaText(
                        "${texts[index]}",
                        fontStyle: UrbanistFont.mobile_text_s_medium,
                        color: colorHelper.getColor(
                          currentIndex != index
                              ? GramediaColor.neutral200
                              : GramediaColor.white,
                        ),
                      ),
                    )),
          )
        ],
      ),
    );
  }
}
