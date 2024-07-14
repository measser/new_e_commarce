import 'package:flutter/material.dart';

import '../../../data/model/drawer_model.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.drawerModel});

   final DrawerModel drawerModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(drawerModel.icon),
      title: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
            child: Text(drawerModel.text)),
      ),
    );
  }
}