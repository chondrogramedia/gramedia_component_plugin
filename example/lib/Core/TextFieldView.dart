import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';

class TextFieldView extends StatefulWidget {
  const TextFieldView({super.key});

  @override
  State<TextFieldView> createState() => _TextFieldViewState();
}

class _TextFieldViewState extends State<TextFieldView> {
  final _formKey = GlobalKey<FormState>();
  GramediaColor colorValue = GramediaColor.neutral700;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              GramediaTextField(
                prefix: GramediaText("Rp", fontStyle: UrbanistFont.desktop_text_2xl_extrabold),
                labelText: "Chondro",
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp("[0-9@a-zA-Z.]"))
                ],
                textColor: colorValue,
                validator: (p0) {
                  const pattern =
                      r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
                      r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
                      r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
                      r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
                      r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
                      r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
                      r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
                  final regex = RegExp(pattern);
                  var isFalse = p0!.isNotEmpty && !regex.hasMatch(p0);
                  setState(() {
                    colorValue = isFalse ? GramediaColor.red500 : GramediaColor.neutral700;
                  });
                  return isFalse
                      ? 'Enter a valid email address'
                      : null;
                },
              ),
              ElevatedButton(onPressed: (){
                _formKey.currentState!.validate();
              }, child: GramediaText("Save", fontStyle: UrbanistFont.mobile_text_2xl_extrabold,color: Colors.white,))
            ],
          ),
        ),
      ),
    );
  }
}
