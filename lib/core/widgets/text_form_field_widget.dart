import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../units/app_colors.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    required this.controller,
     this.validator,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.icon,
    this.labelText,
    this.hintColor = AppColors.primaryBlueColor,
    this.fontWeight= FontWeight.bold, this.borderRadius, this.indexLenght, this.maxLength, this.onChange,
  });

  final String hintText;
  final String? labelText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final FormFieldValidator? validator;
  final IconData? icon;
  final Color? hintColor;
  final FontWeight? fontWeight;
  final BorderRadius? borderRadius;
  final int? indexLenght;
  final int? maxLength;
  final ValueChanged<String>? onChange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.next,
      onChanged: onChange,
      maxLength:maxLength ,
      inputFormatters: [
        LengthLimitingTextInputFormatter(indexLenght),
      ],
      cursorColor: AppColors.primaryBlueColor,
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: Icon(icon),
        labelText: labelText,
        labelStyle: const TextStyle(
            color: AppColors.primaryBlueColor, fontWeight: FontWeight.bold),
        hintStyle: TextStyle(color: hintColor, fontWeight: fontWeight),
        hintText: hintText,
        isDense: true,
        enabledBorder: buildOutlineInputBorder(Colors.black26,borderRadius),
        focusedBorder: buildOutlineInputBorder(AppColors.primaryBlueColor,borderRadius),
        errorBorder: buildOutlineInputBorder(Colors.red,borderRadius),
        focusedErrorBorder: buildOutlineInputBorder(Colors.red,borderRadius),
      ),
      keyboardType: keyboardType,
      validator: validator,
      scrollPadding: const EdgeInsets.only(bottom: 150),
    );
  }

  OutlineInputBorder buildOutlineInputBorder([color,borderRadius]) {
    return OutlineInputBorder(
      borderRadius:borderRadius??BorderRadius.circular(4) ,
      borderSide: BorderSide(
        color: color ?? AppColors.primaryColor,
      ),
    );
  }
}
