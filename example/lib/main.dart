import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:papilus_component_gramedia/Bottomsheet/Bottomsheets.dart';
import 'package:flutter/services.dart';
import 'package:papilus_component_gramedia/Core/Color/Color.dart';
import 'package:papilus_component_gramedia/Core/Typography/Typography.dart';
import 'package:papilus_component_gramedia_example/Core/ColorView.dart';
import 'package:papilus_component_gramedia_example/Core/RadiusView.dart';
import 'package:papilus_component_gramedia_example/Core/SegmentecControllerView.dart';
import 'package:papilus_component_gramedia_example/Core/SpacingView.dart';
import 'package:papilus_component_gramedia_example/Core/TypographyView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [DefaultMaterialLocalizations.delegate],
        theme: ThemeData(),
        home: TestingView());
  }
}

class TestingView extends StatefulWidget {
  const TestingView({super.key});

  @override
  State<TestingView> createState() => _TestingViewState();
}

enum TestingViewCase { color, typograpy, radius, spacing, showBottomsheet, segmentedControl }

class _TestingViewState extends State<TestingView> with Alert {
  void navigation(TestingViewCase caseValue) {
    switch (caseValue) {
      case TestingViewCase.color:
        Navigator.push(context, MaterialPageRoute(builder: (_) => ColorView()));
      case TestingViewCase.typograpy:
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => TypographyView()));
      case TestingViewCase.radius:
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => RadiusView()));
      case TestingViewCase.spacing:
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => SpacingView()));
      case TestingViewCase.showBottomsheet:
        showModalBottomSheetGramedia(context,
            title: Text("Error"), content: Image.asset("assets/Image.png",width: 200,height: 200,));
      case TestingViewCase.segmentedControl:
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => SegmentedControllerView()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: List.generate(
                TestingViewCase.values.length,
                (index) => ElevatedButton(
                    onPressed: () {
                      navigation(TestingViewCase.values[index]);
                    },
                    child: Text(TestingViewCase.values[index].name))),
          ),
        ));
  }
}
