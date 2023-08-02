// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names, unnecessary_null_in_if_null_operators, non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constant.dart';

class DefaultFormField extends StatelessWidget {
  Color? textColor;
  double? fontSize;
  double? radius;
  TextEditingController controller;
  TextInputType? keyboardType;

  Color? colorBorder;
  Widget? suffixIcon;
  String? Function(String?) validate;
  TextAlign? textAlign;

  List<TextInputFormatter>? inputFormatters;
  String? label;

  bool? isPassword;

  void Function()? onTap;

  DefaultFormField({
    Key? key,
    this.textColor,
    this.fontSize,
    this.radius,
    required this.controller,
    this.keyboardType,
    this.colorBorder,
    this.suffixIcon,
    required this.validate,
    this.textAlign,
    this.inputFormatters,
    this.label,
    this.isPassword,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: inputFormatters,
      onTap: onTap ?? null,
      obscureText: isPassword ?? false,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
        color: textColor ?? Colors.black,
        fontSize: (fontSize ?? 13),
        fontWeight: FontWeight.normal,
      ),
      controller: controller,
      keyboardType: keyboardType ?? TextInputType.text,
      validator: validate,
      decoration: InputDecoration(
        labelText: label,
        counterStyle: TextStyle(
          fontSize: 13,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        labelStyle: TextStyle(color: textColor ?? color3, fontSize: 16),
        suffixIcon: suffixIcon != null ? suffixIcon : null,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blue, width: 2),
          borderRadius: BorderRadius.circular(
            radius ?? 10,
          ),
        ),
        fillColor: color3,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            radius ?? 10,
          ),
          borderSide: BorderSide(color: colorBorder ?? color3, width: 2),
        ),
        errorMaxLines: 2,
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius ?? 10),
          borderSide: const BorderSide(width: 2.0, color: Colors.red),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius ?? 10),
          borderSide: const BorderSide(width: 2.0, color: Colors.red),
        ),
      ),
    );
  }
}
