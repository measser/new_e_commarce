import 'package:comamarce/core/units/app_colors.dart';
import 'package:flutter/material.dart';
import '../../../../../core/widgets/animated_rating.dart';
import '../../../data/grid_item_model.dart';
import 'custom_add_card_icon.dart';

class CardImageItem extends StatelessWidget {
  const CardImageItem({
    super.key,
    required this.gridItemModel,
  });

  final GridItemModel gridItemModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            alignment: Alignment.bottomRight,
            decoration: BoxDecoration(
              color: AppColors.black12Color,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage(gridItemModel.image),
              ),
            ),
            child:  Column(
              children: [
                CustomAddCardIcon(get: gridItemModel,),
                const Spacer(),
              ],
            ),
          ),
           AnimatedRating(
            gridItemModel:gridItemModel ,
            size: 3,
          ),
        ],
      ),
    );
  }
}
