import 'package:comamarce/core/widgets/text_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/units/app_colors.dart';
import '../../../../../core/units/routing/app_routes.dart';
import '../../../data/grid_item_model.dart';
import 'details_featured.dart';

class CustomDraggableScrollableSheet extends StatelessWidget {
  const CustomDraggableScrollableSheet({
    super.key,
    required this.gridItemModel,
  });

  final GridItemModel gridItemModel;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.6,
      minChildSize: .6,
      maxChildSize: 1.0,
      builder: (context, scrollController) => Container(
        clipBehavior: Clip.hardEdge,
        height: MediaQuery.sizeOf(context).height,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(25),
              topLeft: Radius.circular(25),
            )),
        child: CustomScrollView(controller: scrollController, slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: DetailsFeatured(gridItemModel: gridItemModel),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      Expanded(
                        child: AppTextButton(
                          onPressed: () {},
                          text: 'Add card',
                          backgroundColor: AppColors.primaryBlueColor,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            context.push(AppRoute.myCart,extra:gridItemModel );
                          },
                          icon: const Icon(FontAwesomeIcons.cartPlus))
                    ],
                  )),
            ),
          )
        ]),
      ),
    );
  }
}