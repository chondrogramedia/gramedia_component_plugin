import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';

class DotSetupView extends StatefulWidget {
  const DotSetupView({super.key});

  @override
  State<DotSetupView> createState() => _DotSetupViewState();
}

class _DotSetupViewState extends State<DotSetupView> {
  var currentIndex = 0;
  late PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
            controller: pageController,
            itemCount: 4,
            itemBuilder: ((context, index) {
              return Center(
                child: GramediaText(
                  "Number $index",
                  fontStyle: UrbanistFont.desktop_text_2xl_extrabold,
                ),
              );
            }),
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          Container(
            color: Colors.red,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: GramediaDotIndicator(
                currentIndex: currentIndex,
                direction: Axis.vertical,
                sizeActive: 12,
                selectedDecoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                        width: 1,
                        color:
                            ColorHelper().getColor(GramediaColor.neutral700))),
                unSelectedDecoration:
                    BoxDecoration(color: Colors.black, shape: BoxShape.circle),
                length: 4,
                onChanged: (index) async {
                  await pageController.animateToPage(index,
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeIn);
                  setState(() {
                    currentIndex = index;
                  });
                }),
          )
        ],
      ),
    );
  }
}
