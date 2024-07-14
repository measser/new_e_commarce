

import 'package:comamarce/features/payment/presentation/checkout/views/widgets/my_card_body.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/appbar_widget.dart';
import '../../../../home_view/data/grid_item_model.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key, required this.items});
  final GridItemModel items;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        text: 'My Card',
      ),
      body:  MyCartBody(items: items,) ,
    );
  }
}




