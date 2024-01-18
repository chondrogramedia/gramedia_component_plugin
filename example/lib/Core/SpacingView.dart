import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/Core/Spacing/Spacing.dart';

class SpacingView extends StatefulWidget {
  const SpacingView({super.key});

  @override
  State<SpacingView> createState() => _SpacingViewState();
}

class _SpacingViewState extends State<SpacingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spacing"),
      ),
      body: ListView(
        children: List.generate(
            Spacing.values.length,
            (index) => Container(
              padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: SpacingHelper().getvalue(Spacing.values[index]),
                        height: 24,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                         
                            ),
                      ),
                      Text("${SpacingHelper().getvalue(Spacing.values[index])}px")
                    ],
                  ),
                )),
      ),
    );
  }
}