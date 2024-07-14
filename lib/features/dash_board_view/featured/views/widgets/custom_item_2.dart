import 'package:flutter/material.dart';

class CustomItem2 extends StatelessWidget {
  const CustomItem2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}


