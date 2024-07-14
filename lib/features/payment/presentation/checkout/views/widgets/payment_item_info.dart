import 'package:flutter/material.dart';

import '../../../../../../core/units/styles.dart';

class PaymentItemInfo extends StatelessWidget {
  const PaymentItemInfo({super.key, required this.value, required this.text});

  final String text,value;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(text,style: Styles.textStyle18w400,),
        const Spacer(),
        Text(value,style: Styles.textStyle18w600,),
      ],
    );
  }
}