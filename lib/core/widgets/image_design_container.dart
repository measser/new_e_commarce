import 'package:flutter/material.dart';

class ImageDesignContainer extends StatelessWidget {
  const ImageDesignContainer({
    super.key, this.radius, this.height=75, this.width=75,
  });

  final double? radius;
  final double? height;
  final double? width;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius??50),
        image: const DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/ecommerce.png'),
        ),
      ),
    );
  }
}