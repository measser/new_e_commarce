import 'package:flutter/material.dart';

import '../../../../../../core/units/app_colors.dart';

class AppButtonIndexChange extends StatefulWidget {
  const AppButtonIndexChange({super.key});

  @override
  State<AppButtonIndexChange> createState() => _AppButtonIndexChangeState();
}

class _AppButtonIndexChangeState extends State<AppButtonIndexChange> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: AppColors.ofWhiteColor),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
              backgroundColor: AppColors.ofWhiteColor,
              child: IconButton(
                  onPressed: () {
                    index--;
                    setState(() {});
                  },
                  icon: const Icon(Icons.remove,color: AppColors.primaryBlueColor,))),
          CircleAvatar(backgroundColor: AppColors.primaryBlueColor,child: Text('$index',style: const TextStyle(
            color: Colors.black
          ),)),
          CircleAvatar(
              backgroundColor: AppColors.ofWhiteColor,
              child: IconButton(
                  onPressed: () {
                    index++;
                    setState(() {});
                  },
                  icon: const Icon(Icons.add,color: AppColors.primaryBlueColor,))),
        ],
      ) ,
    );
  }
}