

import 'package:comamarce/features/dash_board_view/data/model/drawer_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'cusom_drawer_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
   static const List<DrawerModel> items=const [
    DrawerModel(
        icon:Icons.home ,
        text: 'D A S H B O A R D'
    ),DrawerModel(
        icon:Icons.settings ,
        text: 'S E T T I N G S'
    ),DrawerModel(
        icon:Icons.info ,
        text: 'A B O U T'
    ),DrawerModel(
        icon:Icons.logout ,
        text: 'L O G O U T '
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return   const Drawer(
      backgroundColor: Color(0xffDBDBDB),
      elevation: 0,
      child: Column(
        children: [
          DrawerHeader(child: Icon(FontAwesomeIcons.solidHeart,size: 46,),),
          SizedBox(height: 16,),
          CustomDrawerListView(
            items: items,
          ),
        ],
      ),
    );
  }
}