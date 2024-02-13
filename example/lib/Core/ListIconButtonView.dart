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
      appBar: AppBar(
        title: GramediaText("List Icon Button", fontStyle: UrbanistFont.mobile_text_l_extrabold,color: Colors.white,),
      ),
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
                      priority: ButtonPriority.primary,
                    ),
                    GramediaIconButton(
                      icon: Icon(FluentIcons.add_24_filled),
                      onPressed: null,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GramediaText("Small - Primary",
                    fontStyle: UrbanistFont.mobile_text_m_extrabold),
                Wrap(
                  spacing: 12,
                  children: [
                    GramediaIconButton(
                      icon: Icon(FluentIcons.add_16_filled),
                      onPressed: () {},
                      priority: ButtonPriority.primary,
                      iconSize: IconButtonType.small,
                    ),
                    GramediaIconButton(
                      icon: Icon(FluentIcons.add_16_filled),
                      onPressed: null,
                       priority: ButtonPriority.primary,
                       iconSize: IconButtonType.small,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GramediaText("Extra Small - Primary",
                    fontStyle: UrbanistFont.mobile_text_m_extrabold),
                Wrap(
                  spacing: 12,
                  children: [
                    GramediaIconButton(
                      icon: Icon(FluentIcons.add_12_filled),
                      onPressed: () {},
                      priority: ButtonPriority.primary,
                      iconSize: IconButtonType.extrasmall,
                    ),
                    GramediaIconButton(
                      icon: Icon(FluentIcons.add_12_filled),
                      onPressed: null,
                       priority: ButtonPriority.primary,
                       iconSize: IconButtonType.extrasmall,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GramediaText("Medium - Secondary",
                    fontStyle: UrbanistFont.mobile_text_m_extrabold),
                Wrap(
                  spacing: 12,
                  children: [
                    GramediaIconButton(
                      icon: const Icon(FluentIcons.add_24_filled),
                      onPressed: () {},
                      priority: ButtonPriority.secondary,
                    ),
                    GramediaIconButton(
                      icon:const Icon(FluentIcons.add_24_filled),
                      onPressed: null,
                      priority: ButtonPriority.secondary,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GramediaText("Small - Secondary",
                    fontStyle: UrbanistFont.mobile_text_m_extrabold),
                Wrap(
                  spacing: 12,
                  children: [
                    GramediaIconButton(
                      icon: const Icon(FluentIcons.add_24_filled),
                      onPressed: () {},
                      priority: ButtonPriority.secondary,
                      iconSize: IconButtonType.small,
                    ),
                    GramediaIconButton(
                      icon:const Icon(FluentIcons.add_24_filled),
                      onPressed: null,
                      priority: ButtonPriority.secondary,
                      iconSize: IconButtonType.small,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GramediaText("Extra Small - Secondary",
                    fontStyle: UrbanistFont.mobile_text_m_extrabold),
                Wrap(
                  spacing: 12,
                  children: [
                    GramediaIconButton(
                      icon: const Icon(FluentIcons.add_24_filled),
                      onPressed: () {},
                      priority: ButtonPriority.secondary,
                      iconSize: IconButtonType.extrasmall,
                    ),
                    GramediaIconButton(
                      icon:const Icon(FluentIcons.add_24_filled),
                      onPressed: null,
                      priority: ButtonPriority.secondary,
                      iconSize: IconButtonType.extrasmall,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GramediaText("Medium - Tertiery",
                    fontStyle: UrbanistFont.mobile_text_m_extrabold),
                Wrap(
                  spacing: 12,
                  children: [
                    GramediaIconButton(
                      icon: const Icon(FluentIcons.add_24_filled),
                      onPressed: () {},
                      priority: ButtonPriority.tertiery,
                    ),
                    GramediaIconButton(
                      icon:const Icon(FluentIcons.add_24_filled),
                      onPressed: null,
                      priority: ButtonPriority.tertiery,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GramediaText("Small - Tertiery",
                    fontStyle: UrbanistFont.mobile_text_m_extrabold),
                Wrap(
                  spacing: 12,
                  children: [
                    GramediaIconButton(
                      icon: const Icon(FluentIcons.add_24_filled),
                      onPressed: () {},
                      priority: ButtonPriority.tertiery,
                      iconSize: IconButtonType.small,
                    ),
                    GramediaIconButton(
                      icon:const Icon(FluentIcons.add_24_filled),
                      onPressed: null,
                      priority: ButtonPriority.tertiery,
                      iconSize: IconButtonType.small,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GramediaText("Extra Small - Tertiery",
                    fontStyle: UrbanistFont.mobile_text_m_extrabold),
                Wrap(
                  spacing: 12,
                  children: [
                    GramediaIconButton(
                      icon: const Icon(FluentIcons.add_24_filled),
                      onPressed: () {},
                      priority: ButtonPriority.tertiery,
                      iconSize: IconButtonType.extrasmall,
                    ),
                    GramediaIconButton(
                      icon:const Icon(FluentIcons.add_24_filled),
                      onPressed: null,
                      priority: ButtonPriority.tertiery,
                      iconSize: IconButtonType.extrasmall,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
