import 'package:comamarce/features/dash_board_view/featured/views/widgets/custom_item_1.dart';
import 'package:flutter/material.dart';

class CustomList extends StatelessWidget {
  const CustomList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (context,index){
            return const Padding(
              padding:  EdgeInsets.only(right: 16.0),
              child: AspectRatio(
                  aspectRatio: 1,
                  child:  CustomItem1()),
            );
          }),
    );
  }
}