import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';
import 'package:papilus_component_gramedia/PLP/MasterPLP.dart';
import 'package:papilus_component_gramedia_example/Helper/DummyDataCategory.dart';
import 'package:papilus_component_gramedia_example/Helper/DummyDataMedia.dart';
import 'package:papilus_component_gramedia_example/Module/Search/Cubit/SearchCubit.dart';

import '../../../Helper/component/ListProductHome.dart';

class InitialSearchView extends StatefulWidget {
  const InitialSearchView({super.key});

  @override
  State<InitialSearchView> createState() => _InitialSearchViewState();
}

class _InitialSearchViewState extends State<InitialSearchView> {
  late TextEditingController searchController;
  @override
  void initState() {
    // TODO: implement initState
    searchController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          GestureDetector(
            onTap: () {
              context.read<SearchCubit>().setPageNavigation(1);
            },
            child: Container(
              padding: EdgeInsets.all(Spacing.spacing_4.value),
              child: Hero(
                tag: "Seaching",
                child: GramediaSearchField(
                  isEnabled: false,
                  hintText: "Cari Produk, Judul Buku atau Penulis",
                  controller: searchController,
                  onTap: () {},
                ),
              ),
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
