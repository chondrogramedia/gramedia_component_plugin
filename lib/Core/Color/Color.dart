import 'package:flutter/material.dart';

enum GramediaColor {
  white,
  neutral50,
  neutral150,
  neutral200,
  neutral500,
  neutral600,
  neutral700,
  yellow50,
  yellow500,
  yellow600,
  yellow700,
  accent50,
  accent500,
  accent600,
  accent700,
  green50,
  green500,
  green600,
  green700,
  red50,
  red500,
  red600,
  red700,
  brand50,
  brand200,
  brand500,
  brand600,
  brand700
}

extension on GramediaColor {
  Color get valueColor {
    switch (this) {
      case GramediaColor.white:
        return Color(0xffFFFFFF);
      case GramediaColor.neutral50:
        return Color(0xffF1F2F2);
      case GramediaColor.neutral150:
        return Color(0xffD4D7D9);
      case GramediaColor.neutral200:
        return Color(0xffC6C9CC);
      case GramediaColor.neutral500:
        return Color(0xff71797F);
      case GramediaColor.neutral600:
        return Color(0xff5A6166);
      case GramediaColor.neutral700:
        return Color(0xff2D3033);
      case GramediaColor.accent50:
        return Color(0xffFCF0E6);
      case GramediaColor.accent500:
        return Color(0xffE36600);
      case GramediaColor.accent600:
        return Color(0xffB65200);
      case GramediaColor.accent700:
        return Color(0xff883D00);
      case GramediaColor.green50:
        return Color(0xffEAF3E8);
      case GramediaColor.green500:
        return Color(0xff2C8516);
      case GramediaColor.green600:
        return Color(0xff236A12);
      case GramediaColor.green700:
        return Color(0xff1A500D);
      case GramediaColor.yellow50:
        return Color(0xffFEF4D3);
      case GramediaColor.yellow500:
        return Color(0xffC99E1B);
      case GramediaColor.yellow600:
        return Color(0xff977714);
      case GramediaColor.yellow700:
        return Color(0xff644F0E);
      case GramediaColor.red50:
        return Color(0xffF8E7E9);
      case GramediaColor.red500:
        return Color(0xffB91126);
      case GramediaColor.red600:
        return Color(0xff940E1E);
      case GramediaColor.red700:
        return Color(0xff6F0A17);
      case GramediaColor.brand50:
        return Color(0xffE6EFF7);
      case GramediaColor.brand200:
        return Color(0xff99BFDF);
      case GramediaColor.brand500:
        return Color(0xff0060AE);
      case GramediaColor.brand600:
        return Color(0xff004D8B);
      case GramediaColor.brand700:
        return Color(0xff003A68);
      default:
        return Color(0xffFFFFFF);
    }
  }
}

class ColorHelper {
  Color getColor(GramediaColor color) {
    switch (color) {
      case GramediaColor.white:
        return Color(0xffFFFFFF);
      case GramediaColor.neutral50:
        return Color(0xffF1F2F2);
      case GramediaColor.neutral150:
        return Color(0xffD4D7D9);
      case GramediaColor.neutral200:
        return Color(0xffC6C9CC);
      case GramediaColor.neutral500:
        return Color(0xff71797F);
      case GramediaColor.neutral600:
        return Color(0xff5A6166);
      case GramediaColor.neutral700:
        return Color(0xff2D3033);
      case GramediaColor.accent50:
        return Color(0xffFCF0E6);
      case GramediaColor.accent500:
        return Color(0xffE36600);
      case GramediaColor.accent600:
        return Color(0xffB65200);
      case GramediaColor.accent700:
        return Color(0xff883D00);
      case GramediaColor.green50:
        return Color(0xffEAF3E8);
      case GramediaColor.green500:
        return Color(0xff2C8516);
      case GramediaColor.green600:
        return Color(0xff236A12);
      case GramediaColor.green700:
        return Color(0xff1A500D);
      case GramediaColor.yellow50:
        return Color(0xffFEF4D3);
      case GramediaColor.yellow500:
        return Color(0xffC99E1B);
      case GramediaColor.yellow600:
        return Color(0xff977714);
      case GramediaColor.yellow700:
        return Color(0xff644F0E);
      case GramediaColor.red50:
        return Color(0xffF8E7E9);
      case GramediaColor.red500:
        return Color(0xffB91126);
      case GramediaColor.red600:
        return Color(0xff940E1E);
      case GramediaColor.red700:
        return Color(0xff6F0A17);
      case GramediaColor.brand50:
        return Color(0xffE6EFF7);
      case GramediaColor.brand200:
        return Color(0xff99BFDF);
      case GramediaColor.brand500:
        return Color(0xff0060AE);
      case GramediaColor.brand600:
        return Color(0xff004D8B);
      case GramediaColor.brand700:
        return Color(0xff003A68);
      default:
        return Color(0xffFFFFFF);
    }
  }
}
