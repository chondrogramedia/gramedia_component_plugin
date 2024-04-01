import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:papilus_component_gramedia/Core/WidgetSize/WidgetSize.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';
import 'package:papilus_component_gramedia/PLP/MasterPLP.dart';
import 'package:papilus_component_gramedia_example/Helper/DummyDataCategory.dart';
import 'package:papilus_component_gramedia_example/Helper/DummyDataMedia.dart';
import 'package:papilus_component_gramedia_example/Helper/DummyDataProduct.dart';
import 'package:papilus_component_gramedia_example/Module/Search/Cubit/SearchCubit.dart';

class SearchingView extends StatefulWidget {
  const SearchingView({super.key});

  @override
  State<SearchingView> createState() => _SearchingViewState();
}

class _SearchingViewState extends State<SearchingView> with Alert {
  late TextEditingController searchController;
  late FocusNode focusNode;
  @override
  void initState() {
    // TODO: implement initState
    focusNode = FocusNode();
    focusNode.requestFocus();
    searchController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            context.read<SearchCubit>().navigation(0);
                          },
                          icon: const Icon(FluentIcons.arrow_left_12_filled)),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        flex: 9,
                        child: Hero(
                          tag: "Seaching",
                          child: GramediaSearchField(
                            focusNode: focusNode,
                            hintText: "Cari Produk, Judul Buku atau Penulis",
                            controller: searchController,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              height: 52,
              child: Row(
                children: [
                  Expanded(
                      flex: 7,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4),
                              child: GramediaChips(
                                  isSelected: true,
                                  child: GramediaText("Tersedia",
                                      fontStyle:
                                          UrbanistFont.mobile_text_s_medium)),
                            );
                          })),
                  Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: GramediaChips(
                            onPressed: () {
                              showModalBottomSheetGramedia(context,
                                  // ignore: dead_code

                                  header: "Filter",
                                  content: Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 8),
                                          child: Column(
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  GramediaText(
                                                    "Katalog",
                                                    fontStyle: UrbanistFont
                                                        .mobile_text_l_extrabold,
                                                    textAlign: TextAlign.start,
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {},
                                                    child: GramediaText(
                                                      "Lihat Semua",
                                                      fontStyle: UrbanistFont
                                                          .mobile_text_xs_semibold_underline,
                                                      isUndlerlined: true,
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Wrap(
                                                spacing: 8,
                                                runSpacing: 8,
                                                children: List.generate(
                                                    6,
                                                    (index) => GramediaChips(
                                                        child: Text(
                                                            categories[index]
                                                                .title))),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 8),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  GramediaText(
                                                    "Katalog",
                                                    fontStyle: UrbanistFont
                                                        .mobile_text_l_extrabold,
                                                    textAlign: TextAlign.start,
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {},
                                                    child: GramediaText(
                                                      "Lihat Semua",
                                                      fontStyle: UrbanistFont
                                                          .mobile_text_xs_semibold_underline,
                                                      isUndlerlined: true,
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Wrap(
                                                spacing: 8,
                                                runSpacing: 8,
                                                children: List.generate(
                                                    typeMedias.length,
                                                    (index) => GramediaChips(
                                                        child: Text(
                                                            typeMedias[index]
                                                                .title))),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 8),
                                          child: Column(
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  GramediaText(
                                                    "Kategori & Label",
                                                    fontStyle: UrbanistFont
                                                        .mobile_text_l_extrabold,
                                                    textAlign: TextAlign.start,
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {},
                                                    child: GramediaText(
                                                      "Lihat Semua",
                                                      fontStyle: UrbanistFont
                                                          .mobile_text_xs_semibold_underline,
                                                      isUndlerlined: true,
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Wrap(
                                                spacing: 8,
                                                runSpacing: 8,
                                                children: List.generate(
                                                    6,
                                                    (index) => GramediaChips(
                                                        child: Text(
                                                            categories[index]
                                                                .title))),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 8),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  GramediaText(
                                                    "Kategori & Label",
                                                    fontStyle: UrbanistFont
                                                        .mobile_text_l_extrabold,
                                                    textAlign: TextAlign.start,
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {},
                                                    child: GramediaText(
                                                      "Lihat Semua",
                                                      fontStyle: UrbanistFont
                                                          .mobile_text_xs_semibold_underline,
                                                      isUndlerlined: true,
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Wrap(
                                                spacing: 8,
                                                runSpacing: 8,
                                                children: List.generate(
                                                    sorting.length,
                                                    (index) => GramediaChips(
                                                        child: Text(
                                                            sorting[index]
                                                                .title))),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 8),
                                          child: Column(
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  GramediaText(
                                                    "Kategori & Label",
                                                    fontStyle: UrbanistFont
                                                        .mobile_text_l_extrabold,
                                                    textAlign: TextAlign.start,
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {},
                                                    child: GramediaText(
                                                      "Lihat Semua",
                                                      fontStyle: UrbanistFont
                                                          .mobile_text_xs_semibold_underline,
                                                      isUndlerlined: true,
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  GramediaSwitcher(value: true),
                                                  SizedBox(
                                                    width:
                                                        Spacing.spacing_4.value,
                                                  ),
                                                  GramediaText(
                                                      "Hanya yang tersedia",
                                                      fontStyle: UrbanistFont
                                                          .mobile_text_m_medium)
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  title: "",
                                  message: "",
                                  actions: [
                                    Expanded(
                                        child: GramediaButton(
                                            backgroundColor: GramediaColor
                                                .brand500.valueColor,
                                            child: GramediaText(
                                              "Terapkan",
                                              fontStyle: UrbanistFont
                                                  .mobile_text_s_extrabold,
                                              color: GramediaColor
                                                  .white.valueColor,
                                            ),
                                            onPressed: () {}))
                                  ]);
                            },
                            icon: Icon(
                              FluentIcons.filter_12_filled,
                              size: 12,
                              color: Colors.black,
                            ),
                            isSelected: true,
                            backgroundColor: GramediaColor.neutral500,
                            foregroundColor: GramediaColor.white,
                            child: Badge.count(
                              offset: Offset(16, -8),
                              count: 3,
                              child: GramediaText("Filter",
                                  fontStyle: UrbanistFont.mobile_text_s_medium),
                            )),
                      ))
                ],
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return MasterPLPCard(
                        imageUrl: products[index].imageUrl,
                        author: products[index].author,
                        title: products[index].title,
                        type: PLPType.horizontalCard,
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
