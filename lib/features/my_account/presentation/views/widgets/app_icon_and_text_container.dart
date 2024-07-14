import 'package:flutter/material.dart';

import '../../../../../core/units/styles.dart';

class AppIconAndTextContainer extends StatelessWidget {
  const AppIconAndTextContainer({
    super.key,
    required this.icon,
    this.backgroundColor = Colors.blueAccent, required this.text,
  });

  final IconData icon;
  final Color? backgroundColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      width: double.maxFinite,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: Colors.white),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: backgroundColor,
            child: Icon(icon, size: 20, color: Colors.white),
          ),
          const SizedBox(width: 10,),
          Text(text, style: Styles.textStyle16,),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios, size: 15, color: Colors.grey,)
        ],
      ),
    );
  }
}