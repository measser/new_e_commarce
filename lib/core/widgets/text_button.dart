
import 'package:flutter/material.dart';

import '../units/app_colors.dart';
import '../units/styles.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.textColor=AppColors.primaryColor,
    this.backgroundColor,
    this.radius=8,
    this.height,
    this.styles=Styles.textStyle22
  });

  final VoidCallback onPressed;
  final String text;
  final Color textColor;
  final Color? backgroundColor;
  final double? radius;
  final double? height;
  final TextStyle? styles;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor ,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius!),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: styles!.copyWith(
              color: textColor,
            ),
          )),
    );
  }
}