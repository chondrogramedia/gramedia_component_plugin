import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:papilus_component_gramedia/Core/Color/Color.dart';
import 'package:papilus_component_gramedia/Core/Typography/Typography.dart';

class HeaderBottomSheet extends StatelessWidget {
  Function()? onTapClose;
  Function()? onTapBack;
  String title;
  HeaderBottomSheet({this.onTapBack, this.onTapClose,required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Opacity(
            opacity: onTapBack != null ? 1.0 : 0.0,
            child: IconButton(
                onPressed: onTapBack,
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                )),
          ),
          const Spacer(),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TypographyHelper().getValue(
                UrbanistFont.mobile_text_l_extrabold,
                ColorHelper().getColor(GramediaColor.neutral700),
                false),
          ),
          Spacer(),
          onTapClose != null
              ? IconButton(
                  onPressed: onTapClose,
                  icon: Icon(
                    Icons.close,
                    color: Colors.black,
                  ))
              : const SizedBox(
                  width: 8,
                ),
        ],
      ),
    );
  }
}
