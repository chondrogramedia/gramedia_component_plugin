import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum UrbanistFont {
  desktop_text_7xl_extrabold,
  desktop_text_6xl_extrabold,
  desktop_text_5xl_extrabold,
  desktop_text_4xl_extrabold,
  desktop_text_3xl_extrabold,
  desktop_text_2xl_extrabold,
  mobile_text_5xl_extrabold,
  mobile_text_4xl_extrabold,
  mobile_text_3xl_extrabold,
  mobile_text_2xl_extrabold,
  mobile_text_xl_extrabold,
  mobile_text_l_extrabold,
  mobile_text_l_medium,
  mobile_text_l_semibold_underline,
  mobile_text_m_extrabold,
  mobile_text_m_semibold_underline,
  mobile_text_s_extrabold,
  mobile_text_s_medium,
  mobile_text_s_semibold_underline,
  mobile_text_xs_extrabold,
  mobile_text_xs_medium,
  mobile_text_xs_semibold_underline,
  mobile_text_2xs_extrabold,
  mobile_text_2xs_medium,
  mobile_text_2xs_semibold_underline
}

FontWeight thin = FontWeight.w100;
FontWeight extralight = FontWeight.w200;
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semibold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extrabold = FontWeight.w800;
FontWeight black = FontWeight.w900;

class TypographyHelper {
  TextStyle getValue(UrbanistFont font, Color color, bool isUndlerlined) {
    switch (font) {
      case UrbanistFont.desktop_text_7xl_extrabold:
        return GoogleFonts.urbanist(
            fontWeight: extrabold,
            fontSize: 88,
            decoration:
                isUndlerlined ? TextDecoration.underline : TextDecoration.none);
      case UrbanistFont.desktop_text_6xl_extrabold:
        return GoogleFonts.urbanist(fontWeight: extrabold, fontSize: 56,
            decoration:
                isUndlerlined ? TextDecoration.underline : TextDecoration.none,color: color);
      case UrbanistFont.desktop_text_5xl_extrabold:
        return GoogleFonts.urbanist(fontWeight: extrabold, fontSize: 40,
            decoration:
                isUndlerlined ? TextDecoration.underline : TextDecoration.none,color: color);
      case UrbanistFont.desktop_text_4xl_extrabold:
        return GoogleFonts.urbanist(fontWeight: extrabold, fontSize: 32,
            decoration:
                isUndlerlined ? TextDecoration.underline : TextDecoration.none,color: color);
      case UrbanistFont.desktop_text_3xl_extrabold:
        return GoogleFonts.urbanist(fontWeight: extrabold, fontSize: 28,
            decoration:
                isUndlerlined ? TextDecoration.underline : TextDecoration.none,color: color);
      case UrbanistFont.desktop_text_2xl_extrabold:
        return GoogleFonts.urbanist(fontWeight: extrabold, fontSize: 24,
            decoration:
                isUndlerlined ? TextDecoration.underline : TextDecoration.none,color: color);
      case UrbanistFont.mobile_text_5xl_extrabold:
        return GoogleFonts.urbanist(fontWeight: extrabold, fontSize: 40,
            decoration:
                isUndlerlined ? TextDecoration.underline : TextDecoration.none,color: color);
      case UrbanistFont.mobile_text_4xl_extrabold:
        return GoogleFonts.urbanist(fontWeight: extrabold, fontSize: 32,
            decoration:
                isUndlerlined ? TextDecoration.underline : TextDecoration.none,color: color);
      case UrbanistFont.mobile_text_3xl_extrabold:
        return GoogleFonts.urbanist(fontWeight: extrabold, fontSize: 28,
            decoration:
                isUndlerlined ? TextDecoration.underline : TextDecoration.none,color: color);
      case UrbanistFont.mobile_text_2xl_extrabold:
        return GoogleFonts.urbanist(fontWeight: extrabold, fontSize: 24,
            decoration:
                isUndlerlined ? TextDecoration.underline : TextDecoration.none,color: color);
      case UrbanistFont.mobile_text_xl_extrabold:
        return GoogleFonts.urbanist(fontWeight: extrabold, fontSize: 20,
            decoration:
                isUndlerlined ? TextDecoration.underline : TextDecoration.none,color: color);
      case UrbanistFont.mobile_text_l_extrabold:
        return GoogleFonts.urbanist(fontWeight: extrabold, fontSize: 18,
            decoration:
                isUndlerlined ? TextDecoration.underline : TextDecoration.none,color: color);
      case UrbanistFont.mobile_text_l_medium:
        return GoogleFonts.urbanist(fontWeight: medium, fontSize: 18,
            decoration:
                isUndlerlined ? TextDecoration.underline : TextDecoration.none,color: color);
      case UrbanistFont.mobile_text_l_semibold_underline:
        return GoogleFonts.urbanist(fontWeight: semibold, fontSize: 18,
            decoration:
                isUndlerlined ? TextDecoration.underline : TextDecoration.none,color: color);
      case UrbanistFont.mobile_text_m_extrabold:
        return GoogleFonts.urbanist(fontWeight: extrabold, fontSize: 16,
            decoration:
                isUndlerlined ? TextDecoration.underline : TextDecoration.none,color: color);
      case UrbanistFont.mobile_text_m_semibold_underline:
      return GoogleFonts.urbanist(fontWeight: semibold, fontSize: 16,
            decoration:
                isUndlerlined ? TextDecoration.underline : TextDecoration.none,color: color);
      case UrbanistFont.mobile_text_s_extrabold:
      return GoogleFonts.urbanist(fontWeight: extrabold, fontSize: 14,
            decoration:
                isUndlerlined ? TextDecoration.underline : TextDecoration.none,color: color);
      case UrbanistFont.mobile_text_s_medium:
      return GoogleFonts.urbanist(fontWeight: medium, fontSize: 14,
            decoration:
                isUndlerlined ? TextDecoration.underline : TextDecoration.none,color: color);
      case UrbanistFont.mobile_text_s_semibold_underline:
      return GoogleFonts.urbanist(fontWeight: semibold, fontSize: 14,
            decoration:
                isUndlerlined ? TextDecoration.underline : TextDecoration.none,color: color);
      case UrbanistFont.mobile_text_xs_extrabold:
          return GoogleFonts.urbanist(fontWeight: extrabold, fontSize: 12,
            decoration:
                isUndlerlined ? TextDecoration.underline : TextDecoration.none,color: color);
      case UrbanistFont.mobile_text_xs_medium:
      return GoogleFonts.urbanist(fontWeight: medium, fontSize: 12,
            decoration:
                isUndlerlined ? TextDecoration.underline : TextDecoration.none,color: color);
      case UrbanistFont.mobile_text_xs_semibold_underline:
          return GoogleFonts.urbanist(fontWeight: semibold, fontSize: 12,
            decoration:
                isUndlerlined ? TextDecoration.underline : TextDecoration.none,color: color);
      case UrbanistFont.mobile_text_2xs_extrabold:
      return GoogleFonts.urbanist(fontWeight: extrabold, fontSize: 10,
            decoration:
                isUndlerlined ? TextDecoration.underline : TextDecoration.none,color: color);
      case UrbanistFont.mobile_text_2xs_medium:
      return GoogleFonts.urbanist(fontWeight: medium, fontSize: 10,
            decoration:
                isUndlerlined ? TextDecoration.underline : TextDecoration.none,color: color);
      case UrbanistFont.mobile_text_2xs_semibold_underline:
      return GoogleFonts.urbanist(fontWeight: semibold, fontSize: 10,
            decoration:
                isUndlerlined ? TextDecoration.underline : TextDecoration.none,color: color);
    }
  }
}
