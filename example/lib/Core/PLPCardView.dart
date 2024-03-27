import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';
import 'package:papilus_component_gramedia/PLP/MasterPLP.dart';

class PLPCardView extends StatefulWidget {
  const PLPCardView({super.key});

  @override
  State<PLPCardView> createState() => _PLPCardViewState();
}

class _PLPCardViewState extends State<PLPCardView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = 160;
    final double itemWidth = 120;
    return Scaffold(
      appBar: AppBar(
        title: GramediaText(
          "PLP Master",
          fontStyle: UrbanistFont.mobile_text_l_extrabold,
          color: Colors.white,
        ),
      ),
      body: GridView.count(
        childAspectRatio: (itemWidth / itemHeight),
        crossAxisCount: 2,
        children: List.generate(
            10,
            (index) => MasterPLPCard(
                  imageUrl:
                      "https://elexmedia.s3.amazonaws.com/product/9789792039504.jpg",
                  author: "Echiro Oda",
                  title: "One Piece",
                )),
      ),
    );
  }
}
