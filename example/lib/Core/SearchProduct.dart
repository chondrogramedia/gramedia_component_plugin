import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';
import 'package:papilus_component_gramedia/Search/GramediaSearchField.dart';

class SearchProduct extends StatefulWidget {
  const SearchProduct({super.key});

  @override
  State<SearchProduct> createState() => _SearchProductState();
}

class _SearchProductState extends State<SearchProduct> with Navigation {
  late TextEditingController searchController;

  @override
  void initState() {
    // TODO: implement initState
    searchController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: Column(
          children: [
            SizedBox(
              height: 56,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      back(context);
                    },
                    icon: Icon(Icons.chevron_left),
                    iconSize: 32,
                  ),
                  Expanded(
                      child: GramediaSearchField(
                    controller: searchController,
                    isEnabled: true,
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: GramediaText("Testing UI Search",
              fontStyle: UrbanistFont.mobile_text_3xl_extrabold),
        ),
      ),
    );
  }
}
