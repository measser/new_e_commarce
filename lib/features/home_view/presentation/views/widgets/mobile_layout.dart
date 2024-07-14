import 'package:flutter/material.dart';

import '../../../../payment/presentation/checkout/views/widgets/add_items_in_card.dart';
import '../../../../payment/presentation/checkout/views/widgets/custom_button.dart';
import '../../../../payment/presentation/checkout/views/widgets/featured_card_items.dart';
import '../../../data/grid_item_model.dart';
import 'custom_button_navigation_to_another_card.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key, required this.items,
  });
  final GridItemModel items;
  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      physics: const NeverScrollableScrollPhysics(),
      slivers: [
         SliverToBoxAdapter(
          child: Column(
            children: [
              const CustomButtonNavigationToAnotherCard(),
              const SizedBox(height: 10,),
              const AddItemsInCard(),
              const SizedBox(
                height: 25,
              ),
              FeaturedCardItems(gridItemModel: items,),


            ],
          ),
        ),
        const SliverToBoxAdapter(
          child:  SizedBox(height: 20,),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: CustomButton(items: items,)),
          ),
        ),
      ],
    );
  }
}