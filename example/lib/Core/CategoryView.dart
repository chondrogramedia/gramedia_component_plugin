import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/Category/GramediaCategory.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 56,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                      5,
                      (index) => GramediaCategory(
                          image: NetworkImage(
                              "https://elexmedia.s3.amazonaws.com/product/9789792039504.jpg"),
                          text: "Anime")),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
