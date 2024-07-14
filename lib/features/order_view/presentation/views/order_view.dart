
import 'package:flutter/material.dart';
import '../../../../core/widgets/appbar_widget.dart';
import 'widgets/order_view_body.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: CustomAppBar(
        text: 'Order Details'
      ),
        body:const OrderViewBody(),
    ); }
}
