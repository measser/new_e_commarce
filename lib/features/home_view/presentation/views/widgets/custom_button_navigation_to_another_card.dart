import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/units/app_colors.dart';
import '../../../../../core/units/routing/app_routes.dart';
import '../../../../../core/units/styles.dart';

class CustomButtonNavigationToAnotherCard extends StatelessWidget {
  const CustomButtonNavigationToAnotherCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector (
        onTap: (){
          context.push(AppRoute.anotherMyCart);
        },
        child: Text('Anther View...',
          style: Styles.textStyle16.copyWith(
            color: AppColors.primaryBlueColor,
          ),),
      ),
    );
  }
}