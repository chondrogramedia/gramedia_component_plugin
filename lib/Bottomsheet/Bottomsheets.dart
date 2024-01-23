import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/Bottomsheet/HeadeBottomSheet.dart';
import 'package:papilus_component_gramedia/Bottomsheet/MasterBottomSheet.dart';
import 'package:papilus_component_gramedia/Bottomsheet/MasterContentBottomSheet.dart';
import 'package:papilus_component_gramedia/Core/Radius/Radius.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';

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
            maxWidth:
                mediaQuery.size.width > 600 ? 600 : mediaQuery.size.width),
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

  void showGramediaAlert(BuildContext context, {required String title,required String message}) {
    var scaffold = ScaffoldMessenger.of(context);
    final banner = MaterialBanner(
        surfaceTintColor: Colors.blue,
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GramediaText(title,
                fontStyle: UrbanistFont.mobile_text_xs_extrabold),
            SizedBox(
              height: 4,
            ),
            GramediaText(message,
                fontStyle: UrbanistFont.mobile_text_2xs_medium),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                scaffold.clearMaterialBanners();
              },
              icon: Icon(Icons.close))
        ]);
    scaffold.showMaterialBanner(banner);
  }

  void showGramediaSnackbar(BuildContext context, {required String message,SnackBarAction? action}) {
    var color = ColorHelper();
    final snackBar = SnackBar(
      backgroundColor: color.getColor(GramediaColor.neutral600),
      content: GramediaText(
        message,
        fontStyle: UrbanistFont.mobile_text_s_medium,
        textAlign: TextAlign.start,
        color: Colors.white,
      ),
      action: action
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
