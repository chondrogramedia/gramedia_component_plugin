import 'package:fluentui_system_icons/fluentui_system_icons.dart';
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
    "Chondro S",
    "Chondro sebenarnya tampang"
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var colorHelper = ColorHelper();
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GramediaText("$currentIndex",
              fontStyle: UrbanistFont.mobile_text_l_medium),
          
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
          ),
          Wrap(
            spacing: 4.0,
            children: List.generate(
                texts.length,
                (index) => GramediaChips(
                  icon: Icon(FluentIcons.book_16_filled,size: 16,),
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
