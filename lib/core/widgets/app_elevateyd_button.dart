import 'package:flutter/material.dart';

import '../units/app_colors.dart';
import '../units/styles.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.icon,
       this.color=AppColors.primaryBlueColor,
        this.size,
      });

  final VoidCallback onPressed;

  final String text;
  final IconData icon;

  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: TextButton.styleFrom(backgroundColor: color),
      onPressed: onPressed,
      label: Row(
        children: [
          Icon(icon,size: size,),
          const SizedBox(
            width: 5,
          ),
          Text(text,style: Styles.textStyle16,),
        ],
      ),
    );
  }
}
