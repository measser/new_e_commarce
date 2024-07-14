import 'package:flutter/material.dart';

class CustomItem1 extends StatelessWidget {
  const CustomItem1({super.key, this.color});

  final Color? color;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 150,
      decoration: BoxDecoration(
        color:color?? Colors.grey,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}