import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';

class CarouselHome extends StatelessWidget {
  final int currentIndexCarousel;
  final int length;
  final Function(int) onChanged;
  final PageController controller;
  const CarouselHome(
      {super.key,
      required this.currentIndexCarousel,
      required this.length,
      required this.onChanged,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        PageView.builder(
          controller: controller,
          itemCount: length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://ebooks.gramedia.com/ebook-statics/banners/kjuxbf4jo7gfkqlk2hc7gwz9arlz3e.png"))),
            );
          },
          onPageChanged: onChanged,
        ),
        Positioned(
          bottom: 32,
          child: GramediaDotIndicator(
              sizeActive: 12,
              sizeInActive: 8,
              mainAxisAlignment: MainAxisAlignment.center,
              selectedDecoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                      width: 1,
                      color: ColorHelper().getColor(GramediaColor.neutral700))),
              unSelectedDecoration:
                  BoxDecoration(color: Colors.black, shape: BoxShape.circle),
              currentIndex: currentIndexCarousel,
              length: length,
              onChanged: onChanged),
        )
      ],
    );
  }
}
