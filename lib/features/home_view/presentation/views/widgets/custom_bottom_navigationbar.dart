import 'package:flutter/material.dart';

import '../../../../../core/units/app_colors.dart';
import '../../../../../core/units/shared/app_state_cubit/app_state_cubit.dart';

BottomNavigationBar customBottomNavigationBar(AppCubit cubit) {
  return BottomNavigationBar(
    items: cubit.buttons,
    onTap: (index) {
      cubit.changeIndex(index);
    },
    backgroundColor: AppColors.primaryColor,
    type: BottomNavigationBarType.fixed,
    currentIndex:cubit.currentIndex,
    elevation: 0,
    selectedItemColor: Colors.red,
    selectedFontSize: 0,
  );
}