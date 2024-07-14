import 'package:flutter/material.dart';

import '../../../../../core/units/app_colors.dart';

class CustomDetailsBackground extends StatelessWidget {
  const CustomDetailsBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width ,
      height: MediaQuery.sizeOf(context).height * 0.5,
      padding: const EdgeInsets.all(20),
      color: AppColors.black12Color,
    );
  }
}