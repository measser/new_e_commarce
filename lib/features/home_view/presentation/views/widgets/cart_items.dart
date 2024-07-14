import 'package:comamarce/features/home_view/data/grid_item_model.dart';
import 'package:comamarce/features/home_view/presentation/views/widgets/app_favorite_icon.dart';
import 'package:flutter/material.dart';

import '../../../../../core/units/styles.dart';


class CardItems extends StatelessWidget {
  const CardItems({super.key, required this.gridItemModel});

  final GridItemModel gridItemModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            gridItemModel.title,
            maxLines: 1,
            style: Styles.textStyle18w600,
            overflow: TextOverflow.visible,
          ),
          const SizedBox(height: 5,),
          Text(
            gridItemModel.supTitle,
            style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold,color:Colors.black45),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),

          const SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${gridItemModel.price} LE',
                style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold, color:Colors.red),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,

              ),
              const AppFavoriteIcon(),

            ],
          ),

        ],
      ),
    );
  }
}