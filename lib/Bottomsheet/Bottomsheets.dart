import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/Bottomsheet/HeadeBottomSheet.dart';
import 'package:papilus_component_gramedia/Bottomsheet/MasterBottomSheet.dart';
import 'package:papilus_component_gramedia/Bottomsheet/MasterContentBottomSheet.dart';
import 'package:papilus_component_gramedia/Core/Radius/Radius.dart';
import 'package:papilus_component_gramedia/Core/WidgetSize/WidgetSize.dart';
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
      {required String header,
      required Widget content,
      required String title,
      required String message,
      required List<Widget> actions,
      double? height}) {
    var radiusHelper = RadiusHelper();
    var mediaQuery = MediaQuery.of(context);
    showModalBottomSheet<void>(
        useSafeArea: true,
        context: context,
        isScrollControlled: true,
        constraints: BoxConstraints(
            maxWidth:
                mediaQuery.size.width > 600 ? 600 : mediaQuery.size.width),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(radiusHelper.radius(RadiusCase.radius_L))),
        ),
        builder: (context) {
          return Wrap(
            children: [
              HeaderBottomSheet(
                title: header,
                onTapClose: () {
                  Navigator.pop(context);
                },
              ),
              content,
              MasterBottomSheet(
                children: actions,
              )
            ],
          );
        });
  }

  Future<void> showModalBottomsheetWithoutButton(BuildContext context,
      {required String header,
      required Widget content,
      required String title,
      required String message,
      double? height}) async {
    var radiusHelper = RadiusHelper();
    var mediaQuery = MediaQuery.of(context);
    return await showModalBottomSheet(
        useSafeArea: true,
        context: context,
        enableDrag: true,
        isScrollControlled: true,
        backgroundColor: GramediaColor.white.valueColor,
        constraints: BoxConstraints(
            maxWidth: mediaQuery.size.width > 600 ? 600 : mediaQuery.size.width,
            maxHeight: mediaQuery.size.height * 0.75),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(radiusHelper.radius(RadiusCase.radius_L))),
        ),
        builder: (context) {
          return Wrap(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 8, bottom: 20),
                decoration: BoxDecoration(
                  color: GramediaColor.white.valueColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(
                        radiusHelper.radius(RadiusCase.radius_L)),
                  ),
                ),
                child: Center(
                  child: Container(
                    height: 4,
                    width: 32,
                    decoration: BoxDecoration(
                        color: GramediaColor.neutral200.valueColor,
                        borderRadius: BorderRadius.circular(
                            RadiusCase.radius_infinity.value),
                        shape: BoxShape.rectangle),
                  ),
                ),
              ),
              content,
            ],
          );
        });
  }

  void showGramediaAlert(BuildContext context,
      {required String title, required String message}) {
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

  void showGramediaSnackbar(BuildContext context,
      {required String message, SnackBarAction? action}) {
    var color = ColorHelper();
    final snackBar = SnackBar(
        behavior: SnackBarBehavior.floating,
        dismissDirection: DismissDirection.up,
        duration: Duration(seconds: 3),
        elevation: 0,
        margin: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        backgroundColor: color.getColor(GramediaColor.neutral600),
        content: GramediaText(
          message,
          fontStyle: UrbanistFont.mobile_text_s_medium,
          textAlign: TextAlign.start,
          color: Colors.white,
          maxLines: 3,
        ),
        action: action);
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
