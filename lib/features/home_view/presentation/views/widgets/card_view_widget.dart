
import 'package:comamarce/features/home_view/data/grid_item_model.dart';
import 'package:comamarce/features/home_view/presentation/views/widgets/cart_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/units/routing/app_routes.dart';
import 'card_image_item.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({
    super.key, required this.gridItemModel,
  });

  final GridItemModel gridItemModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.push(AppRoute.detailsView,extra:gridItemModel );
      },
      child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: const BorderSide(
              width: 1,
              strokeAlign: 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CardImageItem(gridItemModel: gridItemModel,),
                CardItems(gridItemModel: gridItemModel,)
            ],
          )),
    );
  }
}




