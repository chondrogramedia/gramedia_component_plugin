import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/SegmentedControlled/SegmentedControlled.dart';

class SegmentedControllerView extends StatefulWidget {
  const SegmentedControllerView({super.key});

  @override
  State<SegmentedControllerView> createState() =>
      _SegmentedControllerViewState();
}

class _SegmentedControllerViewState extends State<SegmentedControllerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [SegmentedControlled()],
        ),
      ),
    );
  }
}
