import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/PLP/MasterPLP.dart';
import 'package:papilus_component_gramedia_example/Module/Home/component/CarouselHome.dart';
import 'package:papilus_component_gramedia_example/Helper/component/ListProductHome.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int caroueselIndexHome = 0;
  late PageController pageController;
  @override
  void initState() {
    // TODO: implement initState
    pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          SizedBox(
            height: 231,
            child: CarouselHome(
                controller: pageController,
                currentIndexCarousel: caroueselIndexHome,
                length: 5,
                onChanged: (index) async {
                  await pageController.animateToPage(index,
                      duration: const Duration(milliseconds: 100),
                      curve: Curves.easeIn);
                  setState(() {
                    caroueselIndexHome = index;
                  });
                }),
          ),
          const ListProductHome(
            length: 5,
            title: "Lanjut Baca",
            type: PLPType.durationCard,
          ),
          const ListProductHome(
            length: 5,
            title: "Anime",
            type: PLPType.baseCard,
          ),
          const ListProductHome(
            length: 5,
            title: "Manga",
            type: PLPType.baseCard,
          )
        ],
      ),
    );
  }
}
