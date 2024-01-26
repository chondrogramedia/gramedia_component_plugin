import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';

class LoadingIndicatorView extends StatefulWidget {
  const LoadingIndicatorView({super.key});

  @override
  State<LoadingIndicatorView> createState() => _LoadingIndicatorViewState();
}

class _LoadingIndicatorViewState extends State<LoadingIndicatorView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GramediaText(
          "Loading Indicator",
          fontStyle: UrbanistFont.mobile_text_l_extrabold,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child:
            SizedBox(width: 40, height: 40, child: GramediaLoadingIndicator()),
      ),
    );
  }
}
