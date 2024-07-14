import 'package:comamarce/features/home_view/data/grid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/units/routing/app_routes.dart';
import 'favorite_items.dart';

class FavoriteListView extends StatelessWidget {
  const FavoriteListView({super.key, });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: GestureDetector(
                  onTap: () {
                    context.push(AppRoute.detailsView);
                  },
                  child:const FavoriteItems()),
            ));
  }
}
