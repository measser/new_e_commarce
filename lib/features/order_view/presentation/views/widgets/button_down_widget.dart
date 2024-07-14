

import 'package:flutter/material.dart';

import '../../../../../core/units/app_colors.dart';
import '../../../../../core/units/styles.dart';
import 'order_list_view.dart';

class ButtonDownWidget extends StatelessWidget {
  const ButtonDownWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  ExpansionTile(
      tilePadding: const EdgeInsets.only(bottom: 5,top: 5),
      title:Text('Order Details',style: Styles.textStyle14.copyWith(color: Colors.orangeAccent),),
      textColor: Colors.orangeAccent,
      trailing: const Icon(Icons.expand_circle_down,color:Colors.orangeAccent ,),
      minTileHeight: 0,
      children: const[
         ModalButtonSheetComponant()
      ],

    );
  }
}

// Row(
// children: [
// Text(
// 'Order Details',
// style: Styles.textStyle14
//     .copyWith(color: Colors.orangeAccent),
// ),
// const SizedBox(
// width: 5,
// ),
// const Icon(
// Icons.arrow_circle_down,
// size: 14,
// color: Colors.orangeAccent,
// ),
// ],
// )