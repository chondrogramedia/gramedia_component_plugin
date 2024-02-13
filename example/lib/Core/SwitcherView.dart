import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';
import 'package:papilus_component_gramedia/Text/GramediaText.dart';

class SwitcherView extends StatefulWidget {
  const SwitcherView({super.key});

  @override
  State<SwitcherView> createState() => _SwitcherViewState();
}

class _SwitcherViewState extends State<SwitcherView> {
  bool isSingle = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GramediaText("Are you single?",
                    fontStyle: UrbanistFont.mobile_text_m_extrabold),
                    GramediaSwitcher(value: isSingle,onChanged: (p0) {
                      setState(() {
                        isSingle = p0;
                      });
                    },)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GramediaText("Are you were?",
                    fontStyle: UrbanistFont.mobile_text_m_extrabold),
                    GramediaSwitcher(value: isSingle,onChanged: null)
              ],
            )
          ],
        ),
      ),
    );
  }
}
