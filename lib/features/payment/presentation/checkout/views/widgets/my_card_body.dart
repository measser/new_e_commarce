import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../../home_view/data/grid_item_model.dart';
import '../../../../../home_view/presentation/views/widgets/mobile_layout.dart';



class MyCartBody extends StatelessWidget {
  const MyCartBody({super.key, required this.items,});


  final GridItemModel items;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: MobileLayout(items: items,),
    );
  }
}











