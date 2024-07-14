import 'package:comamarce/features/dash_board_view/featured/views/widgets/custom_item_2.dart';
import 'package:flutter/material.dart';

class CustomSliverListView extends StatelessWidget {
  const CustomSliverListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: 20,
        itemBuilder: (context,index)=>const Padding(
          padding: EdgeInsets.only(top: 16.0),
          child: CustomItem2(),
        ));
  }
}