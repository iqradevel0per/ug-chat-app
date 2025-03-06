import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.controller,
    this.contentPadding,
    this.hinText,
    this.labelText,
    this.hintStyle,
    this.labelStyle,
    this.cursorColor,
    this.validator,
    this.isObscure = false,
    this.border,
  });

  TextEditingController? controller;
  EdgeInsetsGeometry? contentPadding;
  String? labelText;
  String? hinText;
  TextStyle? labelStyle;
  TextStyle? hintStyle;
  Color? cursorColor;
  String? Function(String?)? validator;
  InputBorder? border;
  bool isObscure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      obscureText: isObscure,
      decoration: InputDecoration(
        border: border,
        contentPadding: contentPadding,
        labelText: labelText,
        labelStyle: labelStyle,
        hintText: hinText,
        hintStyle: hintStyle,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff1CBDC8),
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff1CBDC8),
          ),
        ),
      ),
      cursorColor: cursorColor,
    );
  }
}
