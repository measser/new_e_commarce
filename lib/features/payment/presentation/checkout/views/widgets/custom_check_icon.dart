import 'package:flutter/material.dart';

import '../../../../../../core/units/app_colors.dart';

class CustomCheckIcon extends StatelessWidget {
  const CustomCheckIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 50,
      backgroundColor: Color(0xffEDEDED),
      child: CircleAvatar(
        radius: 40,
        backgroundColor: AppColors.greenColor,
        child: Center(child: Icon(Icons.check,size: 50,)),
      ),
    );
  }
}