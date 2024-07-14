
import 'package:comamarce/core/widgets/appbar_widget.dart';
import 'package:comamarce/features/payment/presentation/checkout/views/widgets/another_card_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../home_view/data/grid_item_model.dart';



class AntherCardView extends StatelessWidget {
  const AntherCardView({super.key, required this.items});
  final GridItemModel items;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(text: 'My Card'),
        body:  AnotherCardViewBody(items: items,));
  }
}




