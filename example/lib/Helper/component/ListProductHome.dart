import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';
import 'package:papilus_component_gramedia/PLP/MasterPLP.dart';
import 'package:papilus_component_gramedia_example/Helper/DummyDataProduct.dart';

class ListProductHome extends StatefulWidget {
  final int length;
  final String title;
  final PLPType type;
  const ListProductHome(
      {super.key,
      required this.length,
      required this.title,
      required this.type});

  @override
  State<ListProductHome> createState() => _ListProductHomeState();
}

class _ListProductHomeState extends State<ListProductHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GramediaText(
                widget.title,
                fontStyle: UrbanistFont.mobile_text_l_extrabold,
                textAlign: TextAlign.start,
              ),
              GestureDetector(
                onTap: () {},
                child: GramediaText(
                  "Lihat Semua",
                  fontStyle: UrbanistFont.mobile_text_xs_semibold_underline,
                  isUndlerlined: true,
                  textAlign: TextAlign.start,
                ),
              )
            ],
          ),
          SizedBox(
            height: Spacing.spacing_2.value,
          ),
          SizedBox(
            height: 250,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.length,
                itemBuilder: (context, index) {
                  return MasterPLPCard(
                    imageUrl: products[index].imageUrl,
                    author: products[index].author,
                    title: products[index].title,
                    onFavorited: (p0) {
                      setState(() {
                        products[index].isFavorited = p0;
                      });
                    },
                    isFavorited: products[index].isFavorited,
                    duration: "1 jam 50 Menit",
                    progress: 0.3,
                    type: widget.type,
                  );
                }),
          ),
        ],
      ),
    );
  }
}
