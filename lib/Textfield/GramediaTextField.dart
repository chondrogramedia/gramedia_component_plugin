import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';

import '../Core/Typography/Typography.dart';

class GramediaTextField extends StatelessWidget {
  TextEditingController? controller;
  FocusNode? focusNode;
  GramediaColor? textColor;
  Widget? suffix;
  Widget? suffixIcon;
  Widget? prefix;
  Widget? prefixIcon;
  String? labelText;
  String? Function(String?)? validator;
  TextInputType? keyboardType;
  void Function(String)? onFieldSubmitted;
  void Function(String?)? onSaved;
  List<TextInputFormatter>? inputFormatters;
  bool isObsecure;
  GramediaTextField(
      {super.key,
      this.controller,
      this.focusNode,
      this.textColor = GramediaColor.neutral700,
      this.suffix,
      this.prefix,
      this.suffixIcon,
      this.prefixIcon,
      this.labelText,
      this.keyboardType,
      this.validator,
      this.onSaved,
      this.onFieldSubmitted,this.inputFormatters, this.isObsecure = false});

  @override
  Widget build(BuildContext context) {
    var typograpy = TypographyHelper();
    var radius = RadiusHelper();
    var color = ColorHelper();

    return TextFormField(
      obscureText: isObsecure,
      autocorrect: false,
      keyboardType: keyboardType,
      focusNode: focusNode,
      controller: controller,
      validator: validator,
      onSaved: onSaved,
      inputFormatters: inputFormatters,
      onFieldSubmitted: onFieldSubmitted,
      style: typograpy.getValue(UrbanistFont.mobile_text_m_medium,
          color.getColor(textColor ?? GramediaColor.neutral700), false),
      decoration: InputDecoration(
          labelText: labelText,
          suffix: suffix,
          suffixIcon: suffixIcon,
          prefix: prefix,
          prefixIcon: prefixIcon,
          errorStyle: typograpy.getValue(UrbanistFont.mobile_text_m_medium,
          color.getColor(GramediaColor.red500), false),
          labelStyle: typograpy.getValue(UrbanistFont.mobile_text_m_medium,
              color.getColor(textColor ?? GramediaColor.neutral700), false),
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: color.getColor(GramediaColor.neutral200), width: 1.0),
              borderRadius:
                  BorderRadius.circular(radius.radius(RadiusCase.radius_S))),
                  focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: color.getColor(GramediaColor.red500), width: 1.0),
              borderRadius:
                  BorderRadius.circular(radius.radius(RadiusCase.radius_S))),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: color.getColor(GramediaColor.red500), width: 1.0),
              borderRadius:
                  BorderRadius.circular(radius.radius(RadiusCase.radius_S))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: color.getColor(GramediaColor.neutral700), width: 2.0),
              borderRadius:
                  BorderRadius.circular(radius.radius(RadiusCase.radius_S))),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: color.getColor(GramediaColor.neutral500), width: 1.0),
              borderRadius:
                  BorderRadius.circular(radius.radius(RadiusCase.radius_S)))),
    );
  }
}
