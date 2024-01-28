import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';
import 'package:papilus_component_gramedia/Text/GramediaText.dart';

class ListIconButtonView extends StatefulWidget {
  const ListIconButtonView({super.key});

  @override
  State<ListIconButtonView> createState() => _ListIconButtonViewState();
}

class _ListIconButtonViewState extends State<ListIconButtonView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GramediaText("Medium - Primary",
                    fontStyle: UrbanistFont.mobile_text_m_extrabold),
                Wrap(
                  spacing: 12,
                  children: [
                    GramediaIconButton(
                      icon: Icon(FluentIcons.add_24_filled),
                      onPressed: () {},
                    ),
                    GramediaIconButton(
                      icon: Icon(FluentIcons.add_24_filled),
                      onPressed: null,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
