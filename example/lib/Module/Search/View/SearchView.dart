import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';
import 'package:papilus_component_gramedia/PLP/MasterPLP.dart';
import 'package:papilus_component_gramedia_example/Helper/DummyDataCategory.dart';
import 'package:papilus_component_gramedia_example/Helper/DummyDataMedia.dart';
import 'package:papilus_component_gramedia_example/Helper/component/ListProductHome.dart';
import 'package:papilus_component_gramedia_example/Module/InitialSearch/View/InitialSearchView.dart';
import 'package:papilus_component_gramedia_example/Module/Search/Cubit/SearchCubit.dart';
import 'package:papilus_component_gramedia_example/Module/Searching/View/SearchingView.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> with Navigation {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(builder: (context, state) {
      if (state is InitialState) {
        return InitialSearchView();
      } else if (state is SearchingViewState) {
        return SearchingView();
      } else {
        return Container();
      }
    });
  }
}
