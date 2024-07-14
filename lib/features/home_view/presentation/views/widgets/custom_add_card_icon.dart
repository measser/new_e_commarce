import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/units/app_colors.dart';
import '../../../../../core/units/routing/app_routes.dart';
import '../../../data/grid_item_model.dart';

class CustomAddCardIcon extends StatefulWidget {
   const CustomAddCardIcon({super.key, this.backgroundColor=AppColors.ofWhiteColor, required this.get,});
final Color? backgroundColor;

final GridItemModel get;

  @override
  State<CustomAddCardIcon> createState() => _CustomAddCardIconState();
}

class _CustomAddCardIconState extends State<CustomAddCardIcon> {
final List<GridItemModel> cartList=[];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          cartList.add(widget.get);
        });
      },
      child:  CircleAvatar(
        backgroundColor: widget.backgroundColor,
        radius: 12,
          child:const Icon(Icons.add,color: Colors.black,size: 18,)),
    );
  }
}