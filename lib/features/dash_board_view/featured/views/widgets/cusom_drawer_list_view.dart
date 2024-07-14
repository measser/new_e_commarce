import 'package:comamarce/features/dash_board_view/data/model/drawer_model.dart';
import 'package:flutter/material.dart';

import 'custom_drawer_item.dart';

class CustomDrawerListView extends StatelessWidget {
  const CustomDrawerListView({super.key, required this.items});
  final List<DrawerModel> items;
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context,index){
          return  CustomDrawerItem(drawerModel:items[index] ,);
        });
  }
}