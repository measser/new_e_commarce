import 'package:comamarce/features/dash_board_view/featured/views/widgets/custom_item_1.dart';
import 'package:flutter/material.dart';

import 'custom_item_2.dart';

class CustomWebWidget extends StatelessWidget {
  const CustomWebWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        children: [
          Expanded(flex: 2,
              child: CustomItem1()),
          SizedBox(height: 16,),
          Expanded(child: CustomItem2()),
        ],
      ),
    );
  }
}