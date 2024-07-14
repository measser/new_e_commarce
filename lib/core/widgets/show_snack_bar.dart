import 'package:flutter/material.dart';

import '../units/app_colors.dart';

void showSnackBar(BuildContext context,String message) {
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar
    (content: Text(message),backgroundColor: AppColors.primaryBlueColor, ));
}