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
    return Scaffold(
      appBar: AppBar(
        title: GramediaText("PLP Master", fontStyle: UrbanistFont.mobile_text_l_extrabold,color: Colors.white,),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 156,
        childAspectRatio: 0.5,
        children: List.generate(6, (index) => MasterPLPCard(
              imageUrl:
                  "https://elexmedia.s3.amazonaws.com/product/9789792039504.jpg",
              author: "Echiro Oda",
              title: "One Piece")),
      ),
    );
  }
}
