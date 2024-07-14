import 'package:comamarce/core/units/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../home_view/data/grid_item_model.dart';
import 'anothet_card_list_view.dart';
import 'custom_button.dart';
import 'featured_card_items.dart';

class AnotherCardViewBody extends StatelessWidget {
  const AnotherCardViewBody({super.key, required this.items});
  final GridItemModel items;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const Expanded(child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0),
          child: AnotherCardListView(),
        )),
        Container(
          padding:  const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            color: AppColors.ofWhiteColor,
          child:  Column(
            children: [
               FeaturedCardItems(gridItemModel: items,),
              const SizedBox(height: 10,),
              CustomButton(
                items: items,
                color: AppColors.primaryBlueColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}