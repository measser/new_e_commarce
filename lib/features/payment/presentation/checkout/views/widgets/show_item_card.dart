import 'package:flutter/material.dart';


class ShowItemCard extends StatelessWidget {
  const ShowItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Stack(
        children: [
          Image.asset(
            fit: BoxFit.scaleDown,
            'assets/images/bag.png',
            width: MediaQuery.sizeOf(context).aspectRatio*110,
          ),
        ],
      ),
    );
  }
}