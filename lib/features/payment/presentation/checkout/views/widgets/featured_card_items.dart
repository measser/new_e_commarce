import 'package:comamarce/core/units/constant.dart';
import 'package:comamarce/features/home_view/data/grid_item_model.dart';
import 'package:comamarce/features/payment/presentation/checkout/views/widgets/total_price.dart';
import 'package:flutter/material.dart';

import 'order_info_item.dart';

class FeaturedCardItems extends StatelessWidget {
  const FeaturedCardItems({super.key, required this.gridItemModel});
final GridItemModel gridItemModel;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        OrderInfoItem(
          title: 'Order Subtotal',
          value:'${gridItemModel.price}',
        ),
        const SizedBox(
          height: 3,
        ),
        OrderInfoItem(
          title: 'Discount',
          value: '${gridItemModel.discount}',
        ),
        const SizedBox(
          height: 3,
        ),
        OrderInfoItem(
          title: 'Shipping',
          value:'${gridItemModel.shipping}',
        ),
        const Divider(
          thickness: 2,
          height: 34,
          color: Color(0xffC7C7C7),
        ),
        TotalPrice(title: 'Total', value: (gridItemModel.finalPrice).toString() ),
      ],
    );
  }
}


