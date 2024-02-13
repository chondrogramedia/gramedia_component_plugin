import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';

class BottomSheetView extends StatefulWidget {
  const BottomSheetView({super.key});

  @override
  State<BottomSheetView> createState() => _BottomSheetViewState();
}

class _BottomSheetViewState extends State<BottomSheetView> with Alert {
  @override
  Widget build(BuildContext context) {
    final colorHelper = ColorHelper();
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            
            ElevatedButton(
              onPressed: () {
                showModalBottomSheetGramedia(context,
                    header: "Error",
                    title: "Failed Login",
                    message: "Please check your email / password",
                    content: Image.asset(
                      "assets/Image.png",
                      width: 200,
                      height: 200,
                    ),
                    actions: [
                      Expanded(
                        flex: 20,
                        child: GramediaButton(
                          child: Text("Cancel"),
                          onPressed: (){},
                          backgroundColor:colorHelper.getColor(GramediaColor.red500) ,
                          backgroundPressedColor: colorHelper.getColor(GramediaColor.red700),
                        ),
                      ),
                      SizedBox(width: 12,),
                      Expanded(
                        flex: 20,
                        child: GramediaButton(
                          child: Text("Accept"),
                          onPressed: (){},
                          background: GramediaColor.brand500,
                        ),
                      )
                    ]);
              },
              child: GramediaText("Show Bottomsheet",
                  fontStyle: UrbanistFont.mobile_text_2xl_extrabold,color: Colors.white,),
            ),
            ElevatedButton(
              onPressed: () {
                showGramediaSnackbar(
                  context,
                  message: "Grameida Service Error",
                  action: SnackBarAction(
                    textColor: ColorHelper().getColor(GramediaColor.brand200),
                    label: 'Action',
                    onPressed: () {},
                  ),
                );
              },
              child: GramediaText("Show Snackbar",
                  fontStyle: UrbanistFont.mobile_text_2xl_extrabold),
            ),
            ElevatedButton(
              onPressed: () {
                showGramediaAlert(context,
                    title: "Error", message: "Grameida Service Error");
              },
              child: GramediaText("Show Alert",
                  fontStyle: UrbanistFont.mobile_text_2xl_extrabold),
            ),
          ],
        ),
      ),
    );
  }
}
