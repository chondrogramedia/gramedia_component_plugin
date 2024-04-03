import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';
import 'package:papilus_component_gramedia/PLP/MasterPLP.dart';
import 'package:papilus_component_gramedia_example/Helper/DummyDataCategory.dart';
import 'package:papilus_component_gramedia_example/Helper/DummyDataMedia.dart';
import 'package:papilus_component_gramedia_example/Module/Search/Cubit/SearchCubit.dart';
import 'package:papilus_component_gramedia_example/Module/Searching/View/SearchingView.dart';

import '../../../Helper/component/ListProductHome.dart';

class InitialSearchView extends StatefulWidget {
  const InitialSearchView({super.key});

  @override
  State<InitialSearchView> createState() => _InitialSearchViewState();
}

class _InitialSearchViewState extends State<InitialSearchView> with Navigation {
  late TextEditingController searchController;
  @override
  void initState() {
    // TODO: implement initState

    searchController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    searchController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var styleHelper = TypographyHelper();
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            padding: EdgeInsets.all(Spacing.spacing_4.value),
            child: GramediaButton(
                radiusCase: RadiusCase.radius_infinity,
                background: GramediaColor.white,
                backgroundColor: GramediaColor.white.valueColor,
                backgroundPressedColor: GramediaColor.white.valueColor,
                priority: ButtonPriority.secondary,
                child: Row(
                  children: [
                    Icon(
                      FluentIcons.search_16_filled,
                      color: GramediaColor.neutral500.valueColor,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Cari Produk, Judul Buku atau Penulis",
                      style: styleHelper.getValue(
                          UrbanistFont.mobile_text_s_medium,
                          GramediaColor.neutral500.valueColor,
                          false),
                    )
                  ],
                ),
                onPressed: () {
                  FocusNode focusNode = FocusNode();
                  go(context,
                      page: SearchingView(
                        focusNode: focusNode,
                      ));
                }),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: Spacing.spacing_4.value,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: Spacing.spacing_2.value),
                  child: GramediaText(
                    "Media",
                    fontStyle: UrbanistFont.mobile_text_l_extrabold,
                    textAlign: TextAlign.justify,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                      3,
                      (index) => Expanded(
                            child: GramediaCategory(
                                image: NetworkImage(typeMedias[index].image),
                                text: typeMedias[index].title),
                          )),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: Spacing.spacing_4.value,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: Spacing.spacing_2.value),
                  child: GramediaText(
                    "Populer Category",
                    fontStyle: UrbanistFont.mobile_text_l_extrabold,
                    textAlign: TextAlign.justify,
                  ),
                ),
                GridView.builder(
                  itemCount: categories.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 2.25,
                      crossAxisCount: 3,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8),
                  itemBuilder: (context, index) {
                    return GramediaCategory(
                        image: NetworkImage(categories[index].image),
                        text: categories[index].title);
                  },
                )
              ],
            ),
          ),
          ListProductHome(
              length: 5, title: "Custom List", type: PLPType.baseCard),
          ListProductHome(
              length: 5, title: "Custom List", type: PLPType.baseCard),
          ListProductHome(
              length: 5, title: "Custom List", type: PLPType.baseCard)
        ],
      ),
    );
  }
}
