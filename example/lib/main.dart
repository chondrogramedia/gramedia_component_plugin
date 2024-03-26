import 'package:flutter/material.dart';
import 'dart:async';
import 'package:papilus_component_gramedia/Bottomsheet/Bottomsheets.dart';
import 'package:flutter/services.dart';
import 'package:papilus_component_gramedia/Core/Color/Color.dart';
import 'package:papilus_component_gramedia/Core/Typography/Typography.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';
import 'package:papilus_component_gramedia/Text/GramediaText.dart';
import 'package:papilus_component_gramedia_example/Core/BottomSheetView.dart';
import 'package:papilus_component_gramedia_example/Core/CheckboxList.dart';
import 'package:papilus_component_gramedia_example/Core/ColorView.dart';
import 'package:papilus_component_gramedia_example/Core/DotSetupView.dart';
import 'package:papilus_component_gramedia_example/Core/ElevationView.dart';
import 'package:papilus_component_gramedia_example/Core/LabelValueView.dart';
import 'package:papilus_component_gramedia_example/Core/ListButtonView.dart';
import 'package:papilus_component_gramedia_example/Core/ListIconButtonView.dart';
import 'package:papilus_component_gramedia_example/Core/LoadingIndicatorView.dart';
import 'package:papilus_component_gramedia_example/Core/NavigationBarView.dart';
import 'package:papilus_component_gramedia_example/Core/PLPCardView.dart';
import 'package:papilus_component_gramedia_example/Core/RadiusView.dart';
import 'package:papilus_component_gramedia_example/Core/SearchProduct.dart';
import 'package:papilus_component_gramedia_example/Core/SegmentecControllerView.dart';
import 'package:papilus_component_gramedia_example/Core/SpacingView.dart';
import 'package:papilus_component_gramedia_example/Core/SwitcherView.dart';
import 'package:papilus_component_gramedia_example/Core/TabBarExampleView.dart';
import 'package:papilus_component_gramedia_example/Core/TabBarListView.dart';
import 'package:papilus_component_gramedia_example/Core/TextFieldView.dart';
import 'package:papilus_component_gramedia_example/Core/TypographyView.dart';
import 'package:papilus_component_gramedia_example/Core/WrapChipsView.dart';
import 'package:papilus_component_gramedia_example/Custom/SegemntedCustomView.dart';
import 'package:papilus_component_gramedia_example/View/TabBarCustomView.dart';

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
        theme: ThemeData(useMaterial3: true),
        home: TestingView());
  }
}

class TestingView extends StatefulWidget {
  const TestingView({super.key});

  @override
  State<TestingView> createState() => _TestingViewState();
}

enum TestingViewCase {
  color,
  typograpy,
  radius,
  spacing,
  showBottomsheet,
  chips,
  textfield,
  elevation,
  loadingIndicator,
  plpcard,
  tabBarView,
  tabBarListView,
  button,
  iconButton,
  checkbox,
  switcher,
  search,
  navigationBar,
  label,
  dotIndicator
}

class _TestingViewState extends State<TestingView> with Alert, Navigation {
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
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => BottomSheetView()));
      case TestingViewCase.chips:
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => WrapChipsView()));
      case TestingViewCase.textfield:
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => TextFieldView()));
      case TestingViewCase.elevation:
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => ElevationView()));
      case TestingViewCase.loadingIndicator:
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => LoadingIndicatorView()));
      case TestingViewCase.plpcard:
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => PLPCardView()));
      case TestingViewCase.tabBarView:
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => TabBarExampleView()));
      case TestingViewCase.button:
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => ListButtonView()));
      case TestingViewCase.iconButton:
        go(context, page: ListIconButtonView());
      case TestingViewCase.tabBarListView:
        go(context, page: TabBarListView());
      case TestingViewCase.checkbox:
        go(context, page: CheckboxList());
      case TestingViewCase.switcher:
        go(context, page: SwitcherView());
      case TestingViewCase.search:
        go(context, page: SearchProduct());
      case TestingViewCase.navigationBar:
        go(context, page: NavigationBarView());
      case TestingViewCase.label:
        go(context, page: LabelValueView());
      case TestingViewCase.dotIndicator:
        go(context, page: DotSetupView());
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
                    child: GramediaText(
                      TestingViewCase.values[index].name,
                      fontStyle: UrbanistFont.mobile_text_l_extrabold,
                      color: Colors.white,
                    ))),
          ),
        ));
  }
}
