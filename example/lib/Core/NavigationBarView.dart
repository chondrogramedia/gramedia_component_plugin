import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';

class NavigationBarView extends StatefulWidget {
  const NavigationBarView({super.key});

  @override
  State<NavigationBarView> createState() => _NavigationBarViewState();
}

class _NavigationBarViewState extends State<NavigationBarView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: size.width,
              height: size.height,
            ),
            GramediaNavigationBar(
              count: 4,
              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              builder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.home),
                    GramediaText("Home",
                        fontStyle: UrbanistFont.mobile_text_2xs_extrabold)
                  ],
                );
              },
              currentIndex: currentIndex,
            )
          ],
        ),
      ),
    );
  }
}
