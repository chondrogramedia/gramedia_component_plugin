import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/Bottomsheet/HeadeBottomSheet.dart';
import 'package:papilus_component_gramedia/Bottomsheet/MasterBottomSheet.dart';
import 'package:papilus_component_gramedia/Bottomsheet/MasterContentBottomSheet.dart';
import 'package:papilus_component_gramedia/Core/Radius/Radius.dart';

mixin Alert {
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    return BoxConstraints(
        minWidth: constraints.maxWidth,
        maxWidth: constraints.maxWidth,
        minHeight: 0.0,
        maxHeight: constraints.maxHeight);
  }

  void showModalBottomSheetGramedia(BuildContext context,
      {required Widget title, required Widget content}) {
    var radiusHelper = RadiusHelper();
    var mediaQuery = MediaQuery.of(context);
    showModalBottomSheet<void>(
        context: context,
        constraints: BoxConstraints(
          maxWidth: mediaQuery.size.width > 600 ? 600 : mediaQuery.size.width
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(radiusHelper.radius(RadiusCase.radius_L))),
        ),
        isScrollControlled: true,
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(top: 12),
            height: 460,
            child: Column(
              children: [
                HeaderBottomSheet(
                  title: "Heading",
                  onTapClose: () {
                    Navigator.pop(context);
                  },
                ),
                MasterContentBottomSheet(
                    image: content,
                    title: "Error Login",
                    description: "Please check your email and password"),
                MasterBottomSheet()
              ],
            ),
          );
        });
  }
}
