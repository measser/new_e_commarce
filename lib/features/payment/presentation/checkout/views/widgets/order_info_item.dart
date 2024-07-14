import 'package:flutter/material.dart';

import '../../../../../../core/units/styles.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem({super.key, required this.title, required this.value});

  final String title,value;
  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Text(title,style: Styles.textStyle18w600,),
        const Spacer(),
        Text(r'$' '$value',style: Styles.textStyle18w600,),

      ],
    );
  }
}